ExternalProject_Add(libsigrokdecode
	DEPENDS pkg-config
	DEPENDS libsigrok
	DEPENDS python
	URL http://sigrok.org/download/source/libsigrokdecode/libsigrokdecode-0.5.1.tar.gz
	URL_MD5 1e950dfb4c521a334e150640348efcd4
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND env
		PKG_CONFIG=${PKG_CONFIG_EXECUTABLE}
		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/
		PYTHON3=${CMAKE_BINARY_DIR}/dep-install/bin/python3
		./configure --prefix=${CMAKE_BINARY_DIR}/dep-install
)
