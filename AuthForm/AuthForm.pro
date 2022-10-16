QT       += core gui
QT	 += sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = AuthForm
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS



CONFIG += c++11

SOURCES += \
        auth_window.cpp \
        main.cpp \
        mainwindow.cpp \
        reg_window.cpp

HEADERS += \
        auth_window.h \
        mainwindow.h \
        reg_window.h

FORMS += \
        auth_window.ui \
        mainwindow.ui \
        reg_window.ui

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
