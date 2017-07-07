ExternalProject_Add(doxygen
	URL http://ftp.stack.nl/pub/users/dimitri/doxygen-1.8.13.src.tar.gz
	URL_MD5 0fa414975f8cd6d30e126c28327c1f7c

	CMAKE_ARGS
		-DPKG_CONFIG_EXECUTABLE=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
		-DCMAKE_PREFIX_PATH=${CMAKE_BINARY_DIR}/dep-install/
		-DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/dep-install/
		-DPKG_CONFIG_USE_CMAKE_PREFIX_PATH=On
)
