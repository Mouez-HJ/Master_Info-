# $Id: Makefile,v 1.1 2002/12/06 14:25:18 marquet Exp $
##############################################################################

ROOTDIR=/home/enseign/ASE

CC	= gcc
CFLAGS	= -Wall -Werror -ansi -pedantic
CFLAGS  += -std=iso9899:1999
CFLAGS  += -g
LIBDIR  = -L$(ROOTDIR)/lib
INCDIR  = -I$(ROOTDIR)/include
LIBS    = -lhardware

###------------------------------
### Main targets 
###------------------------------------------------------------
BINARIES= if_pfile if_nfile if_dfile if_cfile 
OBJECTS	= $(addsuffix .o,\
	  drive mbr vol superbloc tools ifile mount inode)

all: clean $(BINARIES) $(OBJECTS)

###------------------------------
### Binaries
###------------------------------------------------------------

if_cfile : if_cfile.o ifile.o mount.o inode.o mbr.o superbloc.o drive.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)
if_nfile : if_nfile.o ifile.o mount.o inode.o mbr.o superbloc.o drive.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)
if_dfile : if_dfile.o ifile.o mount.o inode.o mbr.o superbloc.o drive.o 
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)
if_pfile : if_pfile.o ifile.o  mount.o inode.o mbr.o superbloc.o drive.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBDIR) $(LIBS)

###------------------------------
### #include dependences 
###------------------------------------------------------------
# you may fill these lines with "make depend"

if_cfile.o: if_cfile.c ifile.h inode.h tools.h mount.h superbloc.h mbr.h drive.h
if_dfile.o: if_dfile.c ifile.h inode.h tools.h mount.h  superbloc.h mbr.h drive.h
if_nfile.o: if_nfile.c ifile.h inode.h tools.h mount.h  superbloc.h mbr.h drive.h
if_pfile.o: if_pfile.c ifile.h inode.h tools.h mount.h  superbloc.h mbr.h drive.h
ifile.o: ifile.c inode.h tools.h ifile.h mount.h superbloc.h mbr.h drive.h

drive.o: drive.c drive.h
mbr.o: mbr.c drive.h mbr.h
vol.o: vol.c drive.h vol.h
superbloc.o: superbloc.c mbr.c vol.h drive.h superbloc.h
mount.o: mount.c config.h tools.h 
tools.o: tools.c tools.h
inode.o: inode.c drive.h hardware.h inode.h mbr.h superbloc.h tools.h mount.h 
%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)


###------------------------------
### Misc.
###------------------------------------------------------------
.PHONY: clean realclean depend
clean:
	$(RM) *.o $(BINARIES)
realclean: clean 
	$(RM) vdiskA.bin vdiskB.bin
depend : 
	$(CC) $(CFLAGS) -MM $(INCDIR) *.c

