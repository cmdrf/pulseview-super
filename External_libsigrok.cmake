ExternalProject_Add(libsigrok
	DEPENDS glib
	DEPENDS libusb
	DEPENDS libserialport
	DEPENDS pkg-config
	DEPENDS libzip
	URL http://sigrok.org/download/source/libsigrok/libsigrok-0.5.0.tar.gz
	URL_MD5 0e27c89b6b7374fa9a571d6227f6a54a
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND env
#		-S
#		"CPPFLAGS=\" \
#			-I${CMAKE_BINARY_DIR}/dep-install/include/glib-2.0/ \
#			-I${CMAKE_BINARY_DIR}/dep-install/lib/glib-2.0/include/ \
#			-I${CMAKE_BINARY_DIR}/dep-install/include/libusb-1.0 \
#			-I${CMAKE_BINARY_DIR}/dep-install/include/ \
#			-I${CMAKE_BINARY_DIR}/dep-install/lib/libzip/include/ \
#		\" \
#		LDFLAGS=\"-L${CMAKE_BINARY_DIR}/glib-install/lib\""

		PKG_CONFIG=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/
#		LIBSIGROK_CFLAGS=-Ibla
#		LIBSIGROK_LIBS=-Lbla
#		TESTS_CFLAGS=-Ibla
#		TESTS_LIBS=-Lbla
		./configure --prefix=${CMAKE_BINARY_DIR}/dep-install --with-libserialport --with-libusb
)
