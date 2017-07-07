ExternalProject_Add(Qt5
#	INSTALL_DIR ${CMAKE_BINARY_DIR}/dep-install/
	URL http://download.qt.io/official_releases/qt/5.9/5.9.1/single/qt-everywhere-opensource-src-5.9.1.tar.xz
	URL_MD5 77b4af61c49a09833d4df824c806acaf
	BUILD_IN_SOURCE 1
	CONFIGURE_COMMAND env
		PKG_CONFIG=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/
		./configure
		-opensource
		-confirm-license
		-release
		-no-compile-examples
		-opengl desktop
		-prefix ${CMAKE_BINARY_DIR}/dep-install/
		-nomake examples
		-nomake tests
		-skip qtactiveqt
		-skip qtmultimedia
		-skip qtcharts
		-skip qtdeclarative
		-skip qtquickcontrols
		-skip qtquickcontrols2
		-skip qtpurchasing
		-skip qtspeech
		-skip qtgamepad
		-skip qtwebsockets
		-skip qtsensors
		-skip qtwebchannel
		-skip qtconnectivity
		-skip qtlocation
		-skip qtremoteobjects
		-skip qtdatavis3d
#		-glib
	EXCLUDE_FROM_ALL
)
