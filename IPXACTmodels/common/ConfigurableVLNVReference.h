//-----------------------------------------------------------------------------
// File: ConfigurableVLNVReference.h
//-----------------------------------------------------------------------------
// Project: Kactus2
// Author: Mikko Teuho
// Date: 04.08.2015
//
// Description:
// Configurable VLNV reference matching IP-XACT type configurableLibraryReference.
//-----------------------------------------------------------------------------

#ifndef CONFIGURABLEVLNVREFERENCE_H
#define CONFIGURABLEVLNVREFERENCE_H

#include <IPXACTmodels/common/VLNV.h>
#include <IPXACTmodels/common/VLNVReference.h>
#include <IPXACTmodels/common/ConfigurableElementValue.h>

//-----------------------------------------------------------------------------
//! Configurable VLNV reference matching IP-XACT type configurableLibraryReference.
//-----------------------------------------------------------------------------
class IPXACTMODELS_EXPORT ConfigurableVLNVReference : public VLNVReference
{

public:

    /*!
     *  The constructor.
     *  PRECONDITION: documentReference must point to an existing weak pointer.
     */
    ConfigurableVLNVReference(VLNV const& vlnv, QSharedPointer<QSharedPointer<Document> > documentReference);

    /*!
     *  The copy constructor.
     *  PRECONDITION: documentReference must point to an existing weak pointer.
     */
    ConfigurableVLNVReference(const ConfigurableVLNVReference& other);

    /*!
     *  The destructor.
     */
    ~ConfigurableVLNVReference();

    /*!
     *  Get the list of configurable element values.
     *
     *      @return A pointer to the list of configurable element values.
     */
    QSharedPointer<QList<QSharedPointer<ConfigurableElementValue> > > getConfigurableElementValues();

    /*!
     *  Set the configurable element values.
     *
     *      @param [in] newConfigurableElementValues    The new list of configurable element values.
     */
    void setConfigurableElementValues(
        QSharedPointer<QList<QSharedPointer<ConfigurableElementValue> > > newConfigurableElementValues);

    /*!
     *  Check if the configurable vlnv contains the given configurable element.
     *
     *      @param [in] referenceId     The ID of the configurable element.
     *
     *      @return True, if the configurable element is found, false otherwise.
     */
    bool hasConfigurableElementValue(QString const& referenceId) const;

    /*!
     *  Get a single configurable element value.
     *
     *      @param [in] referenceId     The id of the configurable element value.
     *
     *      @return The value of the configurable element.
     */
    QString getSingleConfigurableElementValue(QString const& referenceId) const;
    
private:

    //! A list of configurable element values
    QSharedPointer<QList<QSharedPointer<ConfigurableElementValue> > > configurableElementValues_;
};

#endif // CONFIGURABLEVLNVREFERENCE_H
