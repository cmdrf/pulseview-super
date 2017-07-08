ExternalProject_Add(libsigrokdecode
	DEPENDS pkg-config
	DEPENDS libsigrok
	DEPENDS python
	URL http://sigrok.org/download/source/libsigrokdecode/libsigrokdecode-0.5.0.tar.gz
	URL_MD5 0f23ad53cb67948bf4f091bbaacba13d
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND env
		PKG_CONFIG=${PKG_CONFIG_EXECUTABLE}
		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/
		PYTHON3=${CMAKE_BINARY_DIR}/dep-install/bin/python3
		./configure --prefix=${CMAKE_BINARY_DIR}/dep-install
)
