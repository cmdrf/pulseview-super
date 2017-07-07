ExternalProject_Add(libsigc++
	URL https://download.gnome.org/sources/libsigc++/2.10/libsigc++-2.10.0.tar.xz
	URL_HASH SHA256=f843d6346260bfcb4426259e314512b99e296e8ca241d771d21ac64f28298d81

#	URL https://download.gnome.org/sources/libsigc++/2.99/libsigc++-2.99.8.tar.xz
#	URL_HASH SHA256=1d053813a455bd9157b01312d015f74fa39f33466961a66e844daeaee658f0f1
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR}/dep-install
)
