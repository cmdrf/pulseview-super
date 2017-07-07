ExternalProject_Add(libftdi
	DEPENDS libusb
	URL https://www.intra2net.com/en/developer/libftdi/download/libftdi1-1.3.tar.bz2
	URL_MD5 156cdf40cece9f8a3ce1582db59a502a

	CMAKE_ARGS
		-DPKG_CONFIG_EXECUTABLE=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
		-DCMAKE_PREFIX_PATH=${CMAKE_BINARY_DIR}/dep-install/
		-DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/dep-install/
		-DPKG_CONFIG_USE_CMAKE_PREFIX_PATH=On
		-DCMAKE_BUILD_TYPE=Release
		-DDOCUMENTATION=Off
		-DEXAMPLES=Off
		-DBUILD_TESTS=Off
)
