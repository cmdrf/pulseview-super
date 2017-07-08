find_package(PkgConfig)

if(PKG_CONFIG_FOUND)
	add_library(pkg-config INTERFACE)
else()
	ExternalProject_Add(pkg-config
		URL https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz
		URL_MD5 f6e931e319531b736fadc017f470e68a
		BUILD_IN_SOURCE On
		CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR}/dep-install --with-internal-glib
		EXCLUDE_FROM_ALL
	)

	set(PKG_CONFIG_EXECUTABLE ${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config)
endif()
