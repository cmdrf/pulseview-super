ExternalProject_Add(ext_pulseview
	DEPENDS boost
	DEPENDS libsigrok
	DEPENDS libsigrokdecode
	DEPENDS glibmm
	DEPENDS Qt5
	URL http://sigrok.org/download/source/pulseview/pulseview-0.4.0.tar.gz
	URL_MD5 122ded293913ec773cd34cb68b93e0f9
	CMAKE_ARGS
		-DPKG_CONFIG_EXECUTABLE=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
		-DCMAKE_PREFIX_PATH=${CMAKE_BINARY_DIR}/dep-install/
		-DCMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}/dep-install/
		-DPKG_CONFIG_USE_CMAKE_PREFIX_PATH=On
		-DDISABLE_WERROR=On
		-DCMAKE_BUILD_TYPE=Release
		-DENABLE_TESTS=Off
)
