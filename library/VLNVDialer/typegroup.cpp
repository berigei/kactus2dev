//-----------------------------------------------------------------------------
// File: typegroup.cpp
//-----------------------------------------------------------------------------
// Project: Kactus 2
// Author: Antti Kamppi
// Date: 11.07.2011
//
// Description:
// Contains the check boxes to set the type options for VLNVDialer.
//-----------------------------------------------------------------------------

#include "typegroup.h"

#include <QGridLayout>

//-----------------------------------------------------------------------------
// Function: TypeGroup::TypeGroup()
//-----------------------------------------------------------------------------
TypeGroup::TypeGroup(QWidget *parent):
QGroupBox(tr("Item Type"), parent),
    componentBox_(tr("Component"), this),
    busBox_(tr("Bus"), this),
    catalogBox_(tr("Catalog"), this),
    apiComBox_(tr("API/COM"), this),
    advancedBox_(tr("Advanced"), this),
    options_()
{
	QGridLayout* layout = new QGridLayout(this);
	layout->addWidget(&busBox_, 0, 0, 1, 1);
    layout->addWidget(&catalogBox_, 0, 1, 1, 1);
    layout->addWidget(&componentBox_, 0, 2, 1, 1);
    layout->addWidget(&apiComBox_, 1, 0, 1, 1);
    layout->addWidget(&advancedBox_, 1, 1, 1, 1);
	layout->setSpacing(0);
	layout->setContentsMargins(4, 4, 4, 4);

	componentBox_.setChecked(true);
	busBox_.setChecked(true);
    catalogBox_.setChecked(true);
    apiComBox_.setChecked(true);
	advancedBox_.setChecked(false);

	connect(&componentBox_, SIGNAL(clicked(bool)), this, SLOT(onComponentChange(bool)), Qt::UniqueConnection);
	connect(&busBox_, SIGNAL(clicked(bool)), this, SLOT(onBusChange(bool)), Qt::UniqueConnection);
    connect(&catalogBox_, SIGNAL(clicked(bool)), this, SLOT(onCatalogChange(bool)), Qt::UniqueConnection);
	connect(&apiComBox_, SIGNAL(clicked(bool)), this, SLOT(onApiComChange(bool)), Qt::UniqueConnection);
    connect(&advancedBox_, SIGNAL(clicked(bool)), this, SLOT(onAdvancedChange(bool)), Qt::UniqueConnection);    
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::~TypeGroup()
//-----------------------------------------------------------------------------
TypeGroup::~TypeGroup()
{
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::setType()
//-----------------------------------------------------------------------------
void TypeGroup::setTypes(Utils::TypeOptions options)
{
    componentBox_.setChecked(options.components_);
    busBox_.setChecked(options.buses_);
    catalogBox_.setChecked(options.catalogs_);
    apiComBox_.setChecked(options.apis_);
    advancedBox_.setChecked(options.advanced_);

    options_ = options;
    emit optionsChanged(options_);
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::getType()
//-----------------------------------------------------------------------------
Utils::TypeOptions TypeGroup::getTypes() const
{
    Utils::TypeOptions options;
    options.components_ = componentBox_.isChecked();
    options.buses_ = busBox_.isChecked();
    options.catalogs_ = catalogBox_.isChecked();
    options.apis_ = apiComBox_.isChecked();
    options.advanced_ = advancedBox_.isChecked();

    return options;
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::onComponentChange()
//-----------------------------------------------------------------------------
void TypeGroup::onComponentChange(bool checked)
{
	options_.components_ = checked;
	emit optionsChanged(options_);
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::onBusChange()
//-----------------------------------------------------------------------------
void TypeGroup::onBusChange(bool checked)
{
	options_.buses_ = checked;
	emit optionsChanged(options_);
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::onCatalogChange()
//-----------------------------------------------------------------------------
void TypeGroup::onCatalogChange(bool checked)
{
    options_.catalogs_ = checked;
    emit optionsChanged(options_);
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::onApiComChange()
//-----------------------------------------------------------------------------
void TypeGroup::onApiComChange(bool checked)
{
    options_.apis_ = checked;
    emit optionsChanged(options_);
}

//-----------------------------------------------------------------------------
// Function: TypeGroup::onAdvancedChange()
//-----------------------------------------------------------------------------
void TypeGroup::onAdvancedChange(bool checked)
{
	options_.advanced_ = checked;
	emit optionsChanged(options_);
}
