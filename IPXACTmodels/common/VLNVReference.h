//-----------------------------------------------------------------------------
// File: VLNVReference.cpp
//-----------------------------------------------------------------------------
// Project: Kactus2
// Author: Janne Virtanen
// Date: 25.03.2017
//
// Description:
// VLNV reference matching IP-XACT type libraryReference.
//-----------------------------------------------------------------------------

#ifndef VLNVREFERENCE_H
#define VLNVREFERENCE_H

#include <IPXACTmodels/common/VLNV.h>
#include <IPXACTmodels/common/Document.h>

//-----------------------------------------------------------------------------
//! VLNV reference matching IP-XACT type libraryReference.
//-----------------------------------------------------------------------------
class IPXACTMODELS_EXPORT VLNVReference : public VLNV
{

public:

    /*!
     *  The constructor.
     *  PRECONDITION: documentReference must point to an existing weak pointer.
     */
    VLNVReference(VLNV const& vlnv, QSharedPointer<QSharedPointer<Document> > documentReference);

    /*!
     *  The copy constructor.
     *  PRECONDITION: documentReference must point to an existing weak pointer.
     */
    VLNVReference(const VLNVReference& other);

    /*!
     *  The destructor.
     */
    ~VLNVReference();

    /*!
     *  Sets the VLNV reference.
     *
     *      @param [in] vlnv   The VLNV to set.
     */
    void setVLNV(VLNV const& vlnv);

    /*!
     *  Gets the reference to the document.
     */
    QSharedPointer<Document> getDocumentReference() const;
    
private:

    QSharedPointer<QSharedPointer<Document> > documentReference_;
};

#endif // VLNVREFERENCE_H
