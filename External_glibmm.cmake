ExternalProject_Add(glibmm
	DEPENDS glib
	DEPENDS pkg-config
	DEPENDS libsigc++
#	URL http://ftp.gnome.org/pub/gnome/sources/glibmm/2.53/glibmm-2.53.2.tar.xz
#	URL_HASH SHA256=9a8e342eceb7853d4f1929813d772e05f3c64c0bd17d435023ecce85b80ab475
#	URL http://ftp.gnome.org/pub/gnome/sources/glibmm/2.51/glibmm-2.51.7.tar.xz
#	URL_HASH SHA256=db67cc77f772fb8c727885b39ad6669ecb309cc72f7d76c25753a5c049dfb5f8
#	URL https://download.gnome.org/sources/glibmm/2.44/glibmm-2.44.0.tar.xz
#	URL_HASH SHA256=1b0ac0425d24895507c0e0e8088a464c7ae2d289c47afa1c11f63278fc672ea8
	URL https://download.gnome.org/sources/glibmm/2.45/glibmm-2.45.80.tar.xz
	URL_HASH SHA256=16ed25c7a4a7df8da0367e382ace6ed8e1b2ece84fc486538b9a9d9087c91ced

	BUILD_IN_SOURCE On

	# https://bugzilla.gnome.org/show_bug.cgi?id=781947
#	PATCH_COMMAND patch -u -p1 < ${CMAKE_SOURCE_DIR}/glibmm.patch &&
#	env
#		PATH=/opt/local/bin:$ENV{PATH} ./autogen.sh
#		PKG_CONFIG=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
#		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/

	CONFIGURE_COMMAND env
		PKG_CONFIG=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig/
		./configure --prefix=${CMAKE_BINARY_DIR}/dep-install --disable-documentation

	BUILD_COMMAND env PATH=${CMAKE_BINARY_DIR}/dep-install/bin:$ENV{PATH} make
)
