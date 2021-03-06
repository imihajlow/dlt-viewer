TEMPLATE  = lib

CONFIG   += plugin
#CONFIG   += qwt


CONFIG(debug, debug|release) {
    DESTDIR = debug/plugins
    QMAKE_LIBDIR += debug
    LIBS += -lqdltd
}
else {
    DESTDIR = release/plugins
    QMAKE_LIBDIR += release
    QMAKE_LIBDIR +=  /usr/local/qwt-6.0.0/lib
    LIBS += -lqdlt
    LIBS += -lqwt

}

TARGET = $$qtLibraryTarget(speedplugin)

# Defines and Header Directories
DEFINES  += QT_VIEWER

INCLUDEPATH += ../../src \
            ../../qdlt \
            /usr/local/qwt-6.0.0/include

# Project files
HEADERS +=  plugininterface.h \
            ../../qdlt/qdlt.h \
            form.h \
            speedplugin.h

SOURCES += speedplugin.cpp \
    form.cpp

FORMS += \
    form.ui
