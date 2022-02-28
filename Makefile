#
# Makefile
#

CC  := gcc
CXX := g++
CPP := cpp
LD  := g++


CFLAGS   := -std=gnu11 -O3
CXXFLAGS := -std=gnu++14 -O3
LDFLAGS  :=

HEADERS  := osmo-fl2k.h
INCLUDES := -I/usr/include/libusb-1.0/
LDFLAGS  += -lusb-1.0 -pthread -lm


default: fl2k-wspr


fl2k-wspr.o: fl2k-wspr.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c fl2k-wspr.cpp -o fl2k-wspr.o $(INCLUDES)


libosmo-fl2k.o: libosmo-fl2k.c $(HEADERS)
	$(CC) $(CFLAGS) -c libosmo-fl2k.c -o libosmo-fl2k.o  $(INCLUDES)


fl2k-wspr: fl2k-wspr.o libosmo-fl2k.o
	$(LD) -ggdb fl2k-wspr.o libosmo-fl2k.o -o fl2k-wspr $(LDFLAGS)


clean:
	-rm -f fl2k-wspr.o
	-rm -f libosmo-fl2k.o
	-rm -f fl2k-wspr
