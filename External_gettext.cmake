ExternalProject_Add(gettext
	URL http://ftp.gnu.org/pub/gnu/gettext/gettext-0.19.8.tar.xz
	URL_MD5 3e7ed1ac886b9b1a4e23e71113da6358
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ./configure --prefix=${CMAKE_BINARY_DIR}/dep-install
)
