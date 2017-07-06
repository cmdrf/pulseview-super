ExternalProject_Add(pcre
	URL https://ftp.pcre.org/pub/pcre/pcre-8.41.tar.bz2
	URL_MD5 c160d22723b1670447341b08c58981c1
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR}/pcre-install --enable-utf --enable-unicode-properties
)
