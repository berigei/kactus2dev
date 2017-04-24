//-----------------------------------------------------------------------------
// File: MetaInstance.cpp
//-----------------------------------------------------------------------------
// Project: Kactus2
// Author: Janne Virtanen
// Date: 11.01.2017
//
// Description:
// An instance of a component instance within a hierarchy with its parameters and interfaces parsed.
//-----------------------------------------------------------------------------

#include "MetaInstance.h"

#include <library/LibraryInterface.h>

#include <editors/ComponentEditor/common/MultipleParameterFinder.h>
#include "editors/ComponentEditor/common/ExpressionFormatter.h"

#include <IPXACTmodels/AbstractionDefinition/AbstractionDefinition.h>
#include <IPXACTmodels/AbstractionDefinition/PortAbstraction.h>
#include <IPXACTmodels/Component/BusInterface.h>
#include <IPXACTmodels/Component/PortMap.h>

//-----------------------------------------------------------------------------
// Function: MetaInstance::MetaInstance()
//-----------------------------------------------------------------------------
MetaInstance::MetaInstance(LibraryInterface* library,
    MessagePasser* messages,
    QSharedPointer<Component> component,
    QSharedPointer<View> activeView) :
MetaComponent(
    messages,
    component,
    activeView),
    library_(library),
    interfaces_(new QMap<QString,QSharedPointer<MetaInterface> >())
{
}

//-----------------------------------------------------------------------------
// Function: MetaInstance::~MetaInstance()
//-----------------------------------------------------------------------------
MetaInstance::~MetaInstance()
{
}

//-----------------------------------------------------------------------------
// Function:  MetaInstance::parseInstance()
//-----------------------------------------------------------------------------
void MetaInstance::parseInstance(QSharedPointer<ComponentInstance> componentInstance,
    QSharedPointer<ListParameterFinder> topFinder,
    QSharedPointer<QList<QSharedPointer<ConfigurableElementValue> > > cevs)
{
    // This is now the associated component instance.
    componentInstance_ = componentInstance;

    // Initialize the parameter parsing: Find parameters from both the instance and the top component.
    QSharedPointer<QList<QSharedPointer<Parameter> > > ilist(getParameters());
    QSharedPointer<ListParameterFinder> instanceFinder(new ListParameterFinder);
    instanceFinder->setParameterList(ilist);

    QSharedPointer<MultipleParameterFinder> multiFinder(new MultipleParameterFinder());
    multiFinder->addFinder(instanceFinder);

    // Use the top finder only if it actually exists.
    if (topFinder)
    {
        multiFinder->addFinder(topFinder);
    }

    // Create parser using the applicable finders.
    IPXactSystemVerilogParser instanceParser(multiFinder);

    // Parse the content: Parameters, interfaces and ports.
    parseParameters(instanceParser, cevs);
    cullInterfaces();
    parsePorts(instanceParser);
    parsePortAssignments(instanceParser);
}

//-----------------------------------------------------------------------------
// Function:  MetaInstance::parseParameters()
//-----------------------------------------------------------------------------
void MetaInstance::parseParameters(IPXactSystemVerilogParser& parser,
    QSharedPointer<QList<QSharedPointer<ConfigurableElementValue> > > cevs)
{
    // If CEVs have been supplied, use them.
    if (cevs)
    {
        // Go through the culled parameters, find if any exists in CEVs.
        foreach(QSharedPointer<Parameter> parameter, *getParameters())
        {
            foreach(QSharedPointer<ConfigurableElementValue> cev, *cevs)
            {
                // If a CEV refers to the parameter, its value shall be the value of the parameter.
                if (cev->getReferenceId() == parameter->getValueId())
                {
                    parameter->setValue(cev->getConfigurableValue());
                    break;
                }
            }
        }
    }

    // Parse values.
    foreach(QSharedPointer<Parameter> parameter, *getParameters())
    {
        parameter->setValue(parseExpression(parser, parameter->getValue()));
    }
}

//-----------------------------------------------------------------------------
// Function: MetaInstance::cullInterfaces()
//-----------------------------------------------------------------------------
void MetaInstance::cullInterfaces()
{
    foreach(QSharedPointer<BusInterface> busInterface, *getComponent()->getBusInterfaces())
    {
        // Find the correct abstraction type.
        QSharedPointer<AbstractionType> absType;

        // TODO: Find the abstraction type by the active view rather than the first one.
        if (!busInterface->getAbstractionTypes()->isEmpty())
        {
            absType = busInterface->getAbstractionTypes()->first();
        }

        if (!absType)
        {
            messages_->errorMessage(QObject::tr
                ("Component %1: Bus interface %2 does not have an abstraction type!")
                .arg(getComponent()->getVlnv().toString(),
                busInterface->name()));
            continue;
        }

        // An abstraction definition is needed. It comes through VLNV reference.
        QSharedPointer<ConfigurableVLNVReference> absRef = absType->getAbstractionRef();

        if (!absRef)
        {
            messages_->errorMessage(QObject::tr
                ("Component %1: Abstraction type of bus interface %2 does not have abstraction reference!")
                .arg(getComponent()->getVlnv().toString(),
                busInterface->name()));
            continue;
        }

        // Find the abstraction definition from the library.
        QSharedPointer<AbstractionDefinition> absDef = absRef->getDocumentReference().dynamicCast<AbstractionDefinition>();

        if (!absDef)
        {
            messages_->errorMessage(QObject::tr
                ("Component %1: Abstraction definition for bus interface %2 was not found: %3")
                .arg(getComponent()->getVlnv().toString(),
                busInterface->name(),
                absRef->toString()));
            continue;
        }

        // Create "our" interface for each IP-XACT interface. Take the relevant values.
        QSharedPointer<MetaInterface> mInterface(new MetaInterface);
        mInterface->interface_ = busInterface;
        mInterface->absType_ = absType;
        mInterface->absDef_ = absDef;

        // Insert to the interface to the list.
        interfaces_->insert(busInterface->name(), mInterface);
    }
}

//-----------------------------------------------------------------------------
// Function: MetaInstance::parsePorts()
//-----------------------------------------------------------------------------
void MetaInstance::parsePorts(IPXactSystemVerilogParser& parser)
{
    foreach (QSharedPointer<Port> cport, *getComponent()->getPorts())
    {
        // Create generation port.
        QSharedPointer<MetaPort> mPort(new MetaPort);

        // Needs a reference to the IP-XACT port.
        mPort->port_ = cport;

        // Both vector and array bounds may be needed.
        mPort->arrayBounds_.first = parseExpression(parser, cport->getArrayLeft());
        mPort->arrayBounds_.second = parseExpression(parser, cport->getArrayRight());

        mPort->vectorBounds_.first = parseExpression(parser, cport->getLeftBound());
        mPort->vectorBounds_.second = parseExpression(parser, cport->getRightBound());

        // Parse the default value.
        mPort->defaultValue_ = parseExpression(parser, cport->getDefaultValue());

        // Append to the list
        getPorts()->insert(cport->name(), mPort);
    }
}

//-----------------------------------------------------------------------------
// Function: MetaInstance::parsePortAssignments()
//-----------------------------------------------------------------------------
void MetaInstance::parsePortAssignments(IPXactSystemVerilogParser& parser)
{
    foreach (QSharedPointer<MetaInterface> mInterface, *interfaces_)
    {
        bool thisIfUsesThePort = false;

        foreach(QSharedPointer<PortMap> pMap, *mInterface->absType_->getPortMaps())
        {
            // The mapping must have a physical port.
            if (!pMap->getPhysicalPort())
            {
                continue;
            }

            // The mapping must have a logical port.
            if (!pMap->getLogicalPort())
            {
                continue;
            }

            // The physical port must match an existing component port.
            QSharedPointer<MetaPort> mPort = getPorts()->value(pMap->getPhysicalPort()->name_);

            if (!mPort)
            {
                continue;
            }
                
            // The abstraction definition must have a port abstraction with the same name.
            QSharedPointer<PortAbstraction> portAbstraction= mInterface->absDef_->
                getPort(pMap->getLogicalPort()->name_);

            if (!portAbstraction)
            {
                messages_->errorMessage(QObject::tr("Component %1, Bus interface %2: Port abstraction"
                    " was not found for logical port %3 at abstraction definition %4.")
                    .arg(getComponent()->getVlnv().toString(),
                    mInterface->interface_->name(),
                    pMap->getLogicalPort()->name_,
                    mInterface->absDef_->getVlnv().toString()));
                continue;
            }

            thisIfUsesThePort = true;

            // Every mapping using the port creates a new assignment for the port.
            QSharedPointer<MetaPortAssignment> mUpPortAssignment(new MetaPortAssignment);

            // The default value comes from the port abstraction.
            mUpPortAssignment->defaultValue_ = portAbstraction->getDefaultValue();

            // Parse the port map bounds.
            QPair<QString, QString> logicalBounds = logicalPortBoundsInMapping(parser, pMap);
            QPair<QString, QString> physicalBounds = physicalPortBoundsInMapping(parser, pMap);

            // If physical bounds do not exist, they are the same as the port bounds.
            if (physicalBounds.first.isEmpty() || physicalBounds.second.isEmpty())
            {
                physicalBounds = mPort->vectorBounds_;
            }

            // If logical bounds do not exist, they are the same as the physical bounds.
            if (logicalBounds.first.isEmpty() || logicalBounds.second.isEmpty())
            {
                // Pick the total width of the physical bounds.
                int left = parseExpression(parser, physicalBounds.first).toInt();
                int right = parseExpression(parser, physicalBounds.second).toInt();
                // This is [abs(physical.left � physical.right):0]
                int widthMinusOne = abs(left - right);
                logicalBounds.first = QString::number(widthMinusOne);
                logicalBounds.second = "0";
            }

            // Assign the values.
            mUpPortAssignment->logicalBounds_ = logicalBounds;
            mUpPortAssignment->physicalBounds_ = physicalBounds;

            // Create a copy of the assignments.
            QSharedPointer<MetaPortAssignment> mDownPortAssignment
                (new MetaPortAssignment(*mUpPortAssignment.data()));
            // There must be an assignment for both directions in hierarchy.
            mPort->upAssignments_.insert(pMap->getLogicalPort()->name_, mUpPortAssignment);
            mPort->downAssignments_.insert(pMap->getLogicalPort()->name_, mDownPortAssignment);

            // Associate the meta port with the interface.
            if (thisIfUsesThePort)
            {
                mInterface->ports_.insert(mPort->port_->name(), mPort);
            }
        }
    }
}

//-----------------------------------------------------------------------------
// Function: MetaInstance::parseExpression()
//-----------------------------------------------------------------------------
QString MetaInstance::parseExpression(IPXactSystemVerilogParser& parser, const QString& expression)
{
    QString value = parser.parseExpression(expression);

    if (value == "x")
    {
        return "0";
    }

    return value;
}

//-----------------------------------------------------------------------------
// Function: MetaInstance::logicalPortBoundsInMapping()
//-----------------------------------------------------------------------------
QPair<QString, QString> MetaInstance::logicalPortBoundsInMapping(IPXactSystemVerilogParser& parser,
    QSharedPointer<PortMap> portMap)
{
    QPair<QString, QString> bounds("", "");

    QSharedPointer<PortMap::LogicalPort> logicalPort = portMap->getLogicalPort();

    if (logicalPort && logicalPort->range_)
    {
        // Pick the range expressions as the logical bounds.
        bounds.first = parseExpression(parser, logicalPort->range_->getLeft());
        bounds.second = parseExpression(parser, logicalPort->range_->getRight());
    }

    return bounds;
}

//-----------------------------------------------------------------------------
// Function: MetaInstance::physicalPortBoundsInMapping()
//-----------------------------------------------------------------------------
QPair<QString, QString> MetaInstance::physicalPortBoundsInMapping(IPXactSystemVerilogParser& parser,
    QSharedPointer<PortMap> portMap)
{
    QPair<QString, QString> bounds("", "");

    QSharedPointer<PortMap::PhysicalPort> physPort = portMap->getPhysicalPort();

    if (physPort && physPort->partSelect_)
    {
        // Pick the part select expressions as the total width of the physical bounds.
        bounds.first = parseExpression(parser, physPort->partSelect_->getLeftRange());
        bounds.second = parseExpression(parser, physPort->partSelect_->getRightRange());
    }

    return bounds;
}