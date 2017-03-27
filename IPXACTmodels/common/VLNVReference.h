//-----------------------------------------------------------------------------
// File: VLNVReference.cpp
//-----------------------------------------------------------------------------
// Project: Kactus2
// Author: Janne Virtanen
// Date: 25.03.2017
//
// Description:
// VLNV reference matching ipxact type libraryReference.
//-----------------------------------------------------------------------------

#ifndef VLNVREFERENCE_H
#define VLNVREFERENCE_H

#include <IPXACTmodels/common/VLNV.h>
#include <IPXACTmodels/common/Document.h>

//-----------------------------------------------------------------------------
//! VLNV reference matching ipxact type libraryReference.
//-----------------------------------------------------------------------------
class IPXACTMODELS_EXPORT VLNVReference : public VLNV
{

public:

    /*!
     *  The constructor.
     */
    VLNVReference(VLNV const& vlnv, QSharedPointer<QWeakPointer<Document> > documentReference);

    /*!
     *  The copy constructor.
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
    
private:

    QSharedPointer<QWeakPointer<Document> > documentReference_;
};

#endif // VLNVREFERENCE_H
