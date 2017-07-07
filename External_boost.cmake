ExternalProject_Add(boost
	URL https://dl.bintray.com/boostorg/release/1.64.0/source/boost_1_64_0.7z
	URL_MD5 ace404a1c6be8b74544a77b85f828d40
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ./bootstrap.sh
		--prefix=${CMAKE_BINARY_DIR}/dep-install
		--with-libraries=system,filesystem,serialization,test
	BUILD_COMMAND ./b2 link=static cxxflags=-std=gnu++14 install
	EXCLUDE_FROM_ALL
)
