ExternalProject_Add(pkg-config
	DEPENDS glib
	URL https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz
	URL_MD5 f6e931e319531b736fadc017f470e68a
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND env
		GLIB_CFLAGS=-I${CMAKE_BINARY_DIR}/dep-install/include
		GLIB_LIBS=-L${CMAKE_BINARY_DIR}/dep-install/lib
		./configure --prefix=${CMAKE_BINARY_DIR}/dep-install #--with-internal-glib

)
