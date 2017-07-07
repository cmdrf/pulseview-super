ExternalProject_Add(libsigrok
	DEPENDS glib
	DEPENDS libusb
	DEPENDS libserialport
	DEPENDS pkg-config
	DEPENDS libzip
	DEPENDS libftdi
	DEPENDS doxygen
	URL http://sigrok.org/download/source/libsigrok/libsigrok-0.5.0.tar.gz
	URL_MD5 0e27c89b6b7374fa9a571d6227f6a54a
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND env
		PKG_CONFIG=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/
		PATH=${CMAKE_BINARY_DIR}/dep-install/bin:$ENV{PATH}
		./configure --prefix=${CMAKE_BINARY_DIR}/dep-install --with-libserialport --with-libusb --with-libftdi --enable-cxx
	BUILD_COMMAND env PATH=${CMAKE_BINARY_DIR}/dep-install/bin:$ENV{PATH} make
)
