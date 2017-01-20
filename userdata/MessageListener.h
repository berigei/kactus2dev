//-----------------------------------------------------------------------------
// File: MessageListener.h
//-----------------------------------------------------------------------------
// Project: Kactus2
// Author: Esko Pekkarinen
// Date: 15.11.2016
//
// Description:
// A module for receiving messages of the user actions.
//-----------------------------------------------------------------------------

#include <QAction>
#include <QFile>
#include <QObject>
#include <QString>

#ifndef MESSAGELISTENER_H
#define MESSAGELISTENER_H

//-----------------------------------------------------------------------------
//! A module for receiving messages of the user actions.
//-----------------------------------------------------------------------------
class MessageListener: QObject
{
    Q_OBJECT

public:

    //! The destructor.
    virtual ~MessageListener(); 

    //! Gets the instance of the listener.
    static MessageListener& getInstance(); 

signals:

    //! Emitted when an event should be recorded.
    void noticeMessage(QString const& msg);

public slots:
    //! Called on events to record.
    void onNoticeMessage(QString const& msg);

    //! Called when user clicks a recordable action.
    void onActionClicked(QAction* action);

    //! Called when user changes help page.
    void onHelpPageChanged(QUrl const& url);

private:

    //! Disable copying.
    explicit MessageListener();
    MessageListener(MessageListener const& other);
    MessageListener& operator=(MessageListener const& other);

    /*!
     *  Write an event into log file.
     *
     *      @param [in] msg     The event message to record.
     */
    void writeToLog(QString const& msg);

    //! Unique id for the session.
    QString sessionId_;

    //! User id in the session.
    QString user_;

    //! File to record all the events in.
    QFile* logFile_;
};

#endif
