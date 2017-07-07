ExternalProject_Add(python
	URL https://www.python.org/ftp/python/3.6.1/Python-3.6.1.tar.xz
	URL_MD5 692b4fc3a2ba0d54d1495d4ead5b0b5c
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND env
	PKG_CONFIG=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
	PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/
	./configure --prefix=${CMAKE_BINARY_DIR}/dep-install
)
