ExternalProject_Add(libserialport
	URL http://sigrok.org/download/source/libserialport/libserialport-0.1.1.tar.gz
	URL_MD5 b93f0325a6157198152b5bd7e8182b51
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR}/dep-install
)
