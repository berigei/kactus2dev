//-----------------------------------------------------------------------------
// File: PortPasteCommand.h
//-----------------------------------------------------------------------------
// Project: Kactus2
// Author: Esko Pekkarinen
// Date: 15.02.2016
//
// Description:
// Paste undo/redo command for interface items in component instances.
//-----------------------------------------------------------------------------

#include <QGraphicsScene>
#include <QUndoCommand>

class Component;
class HWComponentItem;
class BusPortItem;

//-----------------------------------------------------------------------------
//! PortPasteCommand class.
//-----------------------------------------------------------------------------
class PortPasteCommand : public QUndoCommand
{
public:
    /*!
     *  Constructor.
     *
	 *      Creates the child commands for adding physical ports to the component model. 
	 *
     *      @param [in] destComponent  The component to which to copy a port.
	 *      @param [in] port           The port to paste.
     *      @param [in] parent         The parent command.
     */
    PortPasteCommand(HWComponentItem* destComponent, BusPortItem* port, QUndoCommand* parent = 0);

    /*!
     *  Destructor.
     */
    ~PortPasteCommand();

    /*!
     *  Undoes the command.
     */
    virtual void undo();

    /*!
     *  Redoes the command.
     */
    virtual void redo();

private:
    // Disable copying.
    PortPasteCommand(PortPasteCommand const& rhs);
    PortPasteCommand& operator=(PortPasteCommand const& rhs);

    //-----------------------------------------------------------------------------
    // Data.
    //-----------------------------------------------------------------------------

    //! The target item.
    HWComponentItem* component_;

    //! The diagram port.
    BusPortItem* port_;

    //! The graphics scene.
    QGraphicsScene* scene_;

	//! Boolean flag for indicating if the port should be deleted in the destructor.
    bool del_;
};
