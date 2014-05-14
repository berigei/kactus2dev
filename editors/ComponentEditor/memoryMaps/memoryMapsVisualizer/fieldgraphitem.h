/* 
 *  	Created on: 25.4.2012
 *      Author: Antti Kamppi
 * 		filename: fieldgraphitem.h
 *		Project: Kactus 2
 */

#ifndef FIELDGRAPHITEM_H
#define FIELDGRAPHITEM_H

#include <editors/ComponentEditor/visualization/memoryvisualizationitem.h>
#include <IPXACTmodels/field.h>

#include <QSharedPointer>

/*! \brief The graphical item that represents a bit field within a register.
 *
 */
class FieldGraphItem : public MemoryVisualizationItem {
	Q_OBJECT

public:

	/*! \brief The constructor.
	 *
	 * \param field Pointer to the field to visualize.
	 * \param parent Pointer to the parent graph item.
	 *
	*/
	FieldGraphItem(QSharedPointer<Field> field, 
		QGraphicsItem* parent);

	//! \brief The destructor
	virtual ~FieldGraphItem();

    //! \brief Refresh the item and the parent item.
	virtual void refresh();

	/*! \brief Get the offset of the item. 
	 *
	 * \return int The offset of the item from the parent item's base address.
	*/
	virtual quint64 getOffset() const;

	/*! \brief Get the last bit contained in the field.
	 *
	 * \return The last bit.
	*/
	virtual quint64 getLastAddress() const;

	/*! \brief Get the bit width of the item.
	 * 
	 * \return The bit width of the item.
	*/
	virtual int getBitWidth() const;

	/*! \brief Get number of bits the addressable unit contains.
	 *
	 * \return The size of least addressable unit.
	*/
	virtual unsigned int getAddressUnitSize() const;
 
	/*! \brief Set the width for the item.
	 *
	 * \param width The new width of the item.
	 *
	*/
    void setWidth(qreal width);

	/*! \brief Sets the first non-overlapping address to display.
	 *
	 * \param The first address to set.
	*/
    virtual void setOverlappingTop(quint64 const& address);


    /*! \brief Sets the last non-overlapping address to display.
    *
    * \param The last address to set.
    */
    virtual void setOverlappingBottom(quint64 const& address);

    // \brief Sets the item to be completely overlapped by adjacent items.
    virtual  void setCompleteOverlap();

private:

	//! \brief No copying
	FieldGraphItem(const FieldGraphItem& other);

	//! \brief No assignment
	FieldGraphItem& operator=(const FieldGraphItem& other);
   

	//! \brief Pointer to the field being visualized.
	QSharedPointer<Field> field_;
};

#endif // FIELDGRAPHITEM_H