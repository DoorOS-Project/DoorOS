CC = cl
COMMONFLAGS = -nologo
CXXFLAGS = -MD -c
INCLUDES = -Iinclude
LDFLAGS = -incremental:no -manifest:no OpenGl32.lib glew32.lib SDL2.lib SDL2main.lib -SUBSYSTEM:CONSOLE
BUILDDIR=build

BOOTDIR=boot
KERNELDIR=kernel
DRIVERSDIR=drivers
GUIDIR=gui
APPDIR=apps

BOOTSRC=$(BOOTDIR)\boot.asm
KERNELSRC=$(KERNELDIR)\kernel.c
DRIVERSSRC=$(DRIVERSDIR)\keyboard.c $(DRIVERSDIR)\screen.c
GUISRC=$(GUIDIR)\gui.c $(GUIDIR)\window.c
APPSRC=$(APPDIR)\calculator.c $(APPDIR)\editor.c

SRC=$(BOOTSRC) $(KERNELSRC) $(DRIVERSSRC) $(GUISRC) $(APPSRC)

OBJ=$(SRC:.c=.obj)
EXE=prac1.exe
TARGETPATH=$(BUILDDIR)\$(EXE)

all: $(OBJ) $(EXE)

$(EXE): $(OBJ)
	$(CC) $(OBJ) -Fe$(TARGETPATH) $(COMMONFLAGS) -link $(LDFLAGS)

.c.obj:
	$(CC) $(INCLUDES) $(CXXFLAGS) $< -Fo$@ $(COMMONFLAGS)

clean:
	del /f /q $(TARGETPATH)
	del /f /q $(OBJ)