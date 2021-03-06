QT += widgets

TEMPLATE = lib
DEFINES += NOTIFICATIONSPLUGIN_LIBRARY

# Include the-libs build tools
include(/usr/share/the-libs/pri/gentranslations.pri)

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    dbus/notifications_adaptor.cpp \
    dbus/notificationsinterface.cpp \
    drawer/hudwidget.cpp \
    drawer/notificationsdrawer.cpp \
    drawer/notificationsdrawerwidget.cpp \
    notification.cpp \
    notificationtracker.cpp \
    plugin.cpp \
    statuscenter/notificationappgroup.cpp \
    statuscenter/notificationsstatuscenterpane.cpp \
    statuscenter/notificationwidget.cpp

HEADERS += \
    dbus/notifications_adaptor.h \
    dbus/notificationsinterface.h \
    drawer/hudwidget.h \
    drawer/notificationsdrawer.h \
    drawer/notificationsdrawerwidget.h \
    notification.h \
    notificationtracker.h \
    plugin.h \
    statuscenter/notificationappgroup.h \
    statuscenter/notificationsstatuscenterpane.h \
    statuscenter/notificationwidget.h

unix {
    translations.files = translations/*.qm
    translations.path = /usr/share/thedesk/NotificationsPlugin/translations

    defaults.files = defaults.conf
    defaults.path = /etc/theSuite/theDesk/NotificationsPlugin/

    INSTALLS += translations defaults

    INSTALLS += translations
}

include(../plugins.pri)

DISTFILES += \
    Plugin.json \
    defaults.conf

FORMS += \
    drawer/hudwidget.ui \
    drawer/notificationsdrawer.ui \
    drawer/notificationsdrawerwidget.ui \
    statuscenter/notificationappgroup.ui \
    statuscenter/notificationsstatuscenterpane.ui \
    statuscenter/notificationwidget.ui
