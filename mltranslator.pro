#-------------------------------------------------
#
# Project created by QtCreator 2014-01-15T08:29:56
#
#-------------------------------------------------

QT       += core gui xml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = mltranslator
TEMPLATE = app


SOURCES += main.cpp\
        translator.cpp\
        about.cpp \
    convertfiles.cpp \
    preferences.cpp \
    newword.cpp \
    newparadigm.cpp \
    modesviewer.cpp


HEADERS  += translator.h\
            about.h \
    convertfiles.h \
    preferences.h \
    newword.h \
    newparadigm.h \
    modesviewer.h

FORMS    += translator.ui\
            about.ui \
    convertfiles.ui \
    preferences.ui \
    newword.ui \
    newparadigm.ui \
    modesviewer.ui

TRANSLATIONS = mltranslator_mal.ts \
                mltranslator_eng.ts

RESOURCES += \
    icons.qrc \
    themes.qrc

unix {
    INSTALLS += target data icon desktopfile

    target.files = $$TARGET
    target.path = /usr/bin
    data.files = db
    data.path = /usr/share/mltranslator
    icon.files = misc/mltranslator.png
    icon.path = /usr/share/icons
    desktopfile.files = misc/mltranslator.desktop
    desktopfile.path = /usr/share/applications
    QMAKE_CXXFLAGS += -DVISRULED_DATADIR=$$data.path
}
