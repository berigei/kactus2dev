//-----------------------------------------------------------------------------
// File: CPUReader.h
//-----------------------------------------------------------------------------
// Project: Kactus 2
// Author: Janne Virtanen
// Date: 15.09.2015
//
// Description:
// Reader class for IP-XACT CPU element.
//-----------------------------------------------------------------------------

#ifndef CPUReader_H
#define CPUReader_H

#include "cpu.h"

#include <QObject>
#include <QSharedPointer>
#include <QDomNode>
#include <IPXACTmodels/common/CommonItemsReader.h>

//-----------------------------------------------------------------------------
//! Reader class for IP-XACT CPU element.
//-----------------------------------------------------------------------------
class IPXACTMODELS_EXPORT CPUReader : public QObject, public CommonItemsReader
{
    Q_OBJECT

public:

    /*!
     *  The constructor.
     *
     *      @param [in] parent  The owner of this reader.
     */
    CPUReader(QObject* parent = 0);

    /*!
     *  The destructor.
     */
    ~CPUReader();

    /*!
     *  Creates a new CPU from a given CPU node.
     *
     *      @param [in] cpuNode    XML description of the CPU.
     */
    QSharedPointer<Cpu> createCPUFrom(QDomNode const& cpuNode) const;

private:

    //! No copying allowed.
    CPUReader(CPUReader const& rhs);
    CPUReader& operator=(CPUReader const& rhs);

    /*!
     *  Reads the presence.
     *
     *      @param [in] cpuNode    XML description of the view.
     *      @param [in] newCPU     The new cpu item.
     */
    void parseIsPresent(QDomNode const& cpuNode, QSharedPointer<Cpu> newCPU) const;

    /*!
     *  Reads the name group.
     *
     *      @param [in] viewNode    XML description of the view.
     *      @param [in] newCpu		The new cpu item.
     */
    void parseNameGroup(QDomNode const& cpuNode, QSharedPointer<Cpu> newCpu) const;
};

#endif // CPUReader_H