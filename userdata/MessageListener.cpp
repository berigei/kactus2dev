//-----------------------------------------------------------------------------
// File: MessageListener.cpp
//-----------------------------------------------------------------------------
// Project: Kactus2
// Author: Esko Pekkarinen
// Date: 15.11.2016
//
// Description:
// A module for receiving messages of the user actions.
//-----------------------------------------------------------------------------

#include "MessageListener.h"

#include <common/utils.h>

#include <iostream>

#include <QAction>
#include <QApplication>
#include <QCryptographicHash>
#include <QDateTime>
#include <QDir>
#include <QWidget>
#include <QUuid>

//-----------------------------------------------------------------------------
// Function: MessageListener::getInstance()
//-----------------------------------------------------------------------------
MessageListener& MessageListener::getInstance()
{
    static MessageListener instance;

    return instance;
}

//-----------------------------------------------------------------------------
// Function: MessageListener::MessageListener()
//-----------------------------------------------------------------------------
MessageListener::MessageListener(): QObject(0),
    sessionId_(QUuid::createUuid().toString()),
    user_(),
    logFile_(0)
{

    user_ = QCryptographicHash::hash(Utils::getCurrentUser().toLocal8Bit(), QCryptographicHash::Md5).toHex();

    QString logDirPath = QApplication::applicationDirPath() + "/log/";

    if (!QFileInfo::exists(logDirPath))
    {
        QDir logDirectory(logDirPath);
        logDirectory.mkpath(logDirPath);
    }

    QString logFileName = sessionId_;
    logFileName.remove(0, 1); // <! Remove { at the beginning.
    logFileName.chop(1);      // <! Remove } at the end.

    logFileName.append(".log");

    logFile_ = new QFile(logDirPath + logFileName);

    if (!logFile_->open(QIODevice::WriteOnly | QIODevice::Text))
    {
        std::cout << "Could not open log file." << std::endl;
    }
}

//-----------------------------------------------------------------------------
// Function: MessageListener::~MessageListener()
//-----------------------------------------------------------------------------
MessageListener::~MessageListener()
{
    logFile_->close();
}

//-----------------------------------------------------------------------------
// Function: MessageListener::onNoticeMessage()
//-----------------------------------------------------------------------------
void MessageListener::onNoticeMessage(QString const& msg)
{
    QString formattedMsg = QDateTime::currentDateTime().toString("dd.MM.yyyy HH:mm:ss");
    formattedMsg.append(" user ");
    formattedMsg.append(user_);
    formattedMsg.append(" in session ");
    formattedMsg.append(sessionId_);
    formattedMsg.append(": " + msg);

    writeToLog(formattedMsg);

    emit noticeMessage(formattedMsg);
}

//-----------------------------------------------------------------------------
// Function: MessageListener::onActionClicked()
//-----------------------------------------------------------------------------
void MessageListener::onActionClicked(QAction* action)
{
    QString clickMessage = "Clicked on " + action->text();
    onNoticeMessage(clickMessage);
}

//-----------------------------------------------------------------------------
// Function: MessageListener::writeToLog()
//-----------------------------------------------------------------------------
void MessageListener::writeToLog(QString const& msg)
{
    logFile_->write(msg.toLocal8Bit());
    logFile_->write("\n");
    logFile_->flush();
}
