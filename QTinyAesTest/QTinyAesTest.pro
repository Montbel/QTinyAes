TEMPLATE = app

QT += testlib
QT -= gui

CONFIG += console
CONFIG -= app_bundle

TARGET = tst_qtinyaestest

SOURCES += tst_qtinyaestest.cpp
DEFINES += SRCDIR=\\\"$$PWD/\\\"

QDEP_DEPENDS += $$fromfile(../qtinyaes.pri, QDEP_DEPENDS)

!load(qdep):error("Failed to load qdep feature! Run 'qdep.py prfgen --qmake $$QMAKE_QMAKE' to create it.")

include(../qtinyaes.pri)
