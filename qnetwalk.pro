VERSION         = 1.0.0
TARGET          = FixTheNet
TEMPLATE	= app
CONFIG	       += qt warn_on

HEADERS		= cell.h	\
		  mainwindow.h \
    mydialog.h

SOURCES		= cell.cpp	\
		  main.cpp	\
		  mainwindow.cpp

RESOURCES	= qnetwalk.qrc

symbian: {
        TARGET.CAPABILITY = WriteDeviceData NetworkServices
        TARGET.UID3 = 0x200328A4
        TARGET.EPOCHEAPSIZE = 0x20000 0x2000000
        ICON=symbian/icon.svg

        LIBS += -ltouchfeedback
        LIBS += -lcone -leikcore -lavkon

        sounds.sources = sounds\*.*
        sounds.path = !:\data\netwalksounds\
        DEPLOYMENT += sounds

#
#; DEPLOYMENT
#"sounds/win.wav"    - "!:\data\netwalksounds\win.wav"
#"sounds/connect.wav"    - "!:\data\netwalksounds\connect.wav"
#"sounds/click.wav"    - "!:\data\netwalksounds\click.wav"
#"sounds/turn.wav"    - "!:\data\netwalksounds\turn.wav"
#"sounds/start.wav"    - "!:\data\netwalksounds\start.wav"
#"sounds/decisions.mp3"    - "!:\data\netwalksounds\decisions.mp3"
}
