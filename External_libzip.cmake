ExternalProject_Add(libzip
	URL https://nih.at/libzip/libzip-1.2.0.tar.xz
	URL_MD5 2a9b316d16218f1b7562d5a5e0fcbd79
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR}/dep-install
)
