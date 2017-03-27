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

#include "VLNVReference.h"

//-----------------------------------------------------------------------------
// Function: VLNVReference::VLNVReference()
//-----------------------------------------------------------------------------
VLNVReference::VLNVReference(VLNV const& vlnv, QSharedPointer<QWeakPointer<Document> > documentReference):
VLNV(vlnv),
documentReference_(documentReference)
{
}

//-----------------------------------------------------------------------------
// Function: VLNVReference::VLNVReferenceCopy()
//-----------------------------------------------------------------------------
VLNVReference::VLNVReference(const VLNVReference& other):
VLNV(other),
documentReference_(other.documentReference_)
{
}

//-----------------------------------------------------------------------------
// Function: VLNVReference::~VLNVReference()
//-----------------------------------------------------------------------------
VLNVReference::~VLNVReference()
{
}

//-----------------------------------------------------------------------------
// Function: VLNVReference::setVLNV()
//-----------------------------------------------------------------------------
void VLNVReference::setVLNV(VLNV const& vlnv)
{
    VLNV::operator=(vlnv);
}