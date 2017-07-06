ExternalProject_Add(libusb
	URL https://downloads.sourceforge.net/project/libusb/libusb-1.0/libusb-1.0.21/libusb-1.0.21.tar.bz2
	URL_MD5 1da9ea3c27b3858fa85c5f4466003e44
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR}/dep-install

)
