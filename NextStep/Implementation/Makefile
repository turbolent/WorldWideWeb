#
# Generated by the NeXT Project Builder.
#
# NOTE: Do NOT change this file -- Project Builder maintains it.
#
# Put all of your customizations in files called Makefile.preamble
# and Makefile.postamble (both optional), and Makefile will include them.
#

NAME = WorldWideWeb

PROJECTVERSION = 2.6
PROJECT_TYPE = Application
LANGUAGE = English

NEXTSTEP_APPICON = worldbook2.tiff
NEXTSTEP_DOCICONS = docflash2.tiff

ICONSECTIONS =	-sectcreate __ICON app worldbook2.tiff \
		-sectcreate __ICON docflash2 docflash2.tiff

GLOBAL_RESOURCES = WorldWideWeb.nib docflash.tiff docflash2.tiff\
                   icon1.tiff worldbook2.tiff

CLASSES = Anchor.m FileAccess.m HTStyle.m HyperAccess.m HyperManager.m\
          HyperText.m NewsAccess.m StyleToy.m TcpAccess.m TextToy.m\
          WWWPageLayout.m

HFILES = HTAccess.h HTFile.h HTFTP.h HTParse.h HTTCP.h HTTP.h\
         HTUtils.h tcp.h WWW.h Anchor.h FileAccess.h HTStyle.h\
         HyperAccess.h HyperManager.h HyperText.h NewsAccess.h\
         StyleToy.h TcpAccess.h TextToy.h WWWPageLayout.h HTString.h

MFILES = WorldWideWeb_main.m

CFILES = HTAccess.c HTFile.c HTFTP.c HTParse.c HTString.c HTTCP.c\
         HTTP.c


MAKEFILEDIR = $(NEXT_ROOT)/NextDeveloper/Makefiles/pb_makefiles
CODE_GEN_STYLE = DYNAMIC
MAKEFILE = app.make
NEXTSTEP_INSTALLDIR = $(HOME)/Apps
WINDOWS_INSTALLDIR = $(HOME)/Apps
PDO_UNIX_INSTALLDIR = $(HOME)/Apps
LIBS = -lMedia_s -lNeXT_s
DEBUG_LIBS = $(LIBS)
PROF_LIBS = $(LIBS)




include $(MAKEFILEDIR)/platform.make

-include Makefile.preamble

include $(MAKEFILEDIR)/$(MAKEFILE)

-include Makefile.postamble

-include Makefile.dependencies
