include ( ../../../config.mak )
include ( ../../../settings.pro)

TEMPLATE = app
TARGET = mythreplex
target.path = $${PREFIX}/bin
INSTALLS = target

QMAKE_CLEAN += $(TARGET)

# Input
SOURCES += avi.c element.c mpg_common.c multiplex.c ringbuffer.c
SOURCES += ts.c replex.c pes.c

HEADERS += avi.h element.h mpg_common.h multiplex.h ringbuffer.h
HEADERS += ts.h replex.h pes.h

INCLUDEPATH += replex
INCLUDEPATH += ../../../libs/libavcodec ../../../libs/libavformat
INCLUDEPATH += ../../../libs/libavutil  ../../../libs/libmythmpeg2

LIBS += -L../../../libs/libavcodec -lmythavcodec-$${LIBVERSION}
LIBS += -L../../../libs/libavformat -lmythavformat-$${LIBVERSION}
LIBS += -L../../../libs/libavutil -lmythavutil-$${LIBVERSION}
LIBS += $$EXTRA_LIBS
