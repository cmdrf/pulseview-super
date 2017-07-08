find_path(FFI_INCLUDE_DIR ffi.h PATHS /usr/include PATH_SUFFIXES ffi)
if(NOT FFI_INCLUDE_DIR)
	message(FATAL_ERROR "ffi.h not found")
endif()

ExternalProject_Add(glib
	DEPENDS gettext
	DEPENDS pkg-config
	# https://bugzilla.gnome.org/show_bug.cgi?id=781947 prevents newer versions from working:
	URL https://download.gnome.org/sources/glib/2.50/glib-2.50.3.tar.xz
	URL_HASH SHA256=82ee94bf4c01459b6b00cb9db0545c2237921e3060c0b74cff13fbc020cfd999
#	URL http://ftp.gnome.org/pub/gnome/sources/glib/2.51/glib-2.51.5.tar.xz
#	URL_HASH SHA256=fec5483099c8309c4b4c06cd88eb37f464f0f4642bdc225344cd497fe25abe75
#	URL http://ftp.gnome.org/pub/gnome/sources/glib/2.53/glib-2.53.2.tar.xz
#	URL_HASH SHA256=ad727874057d369bf5f77f3ed32e2c50488672c99e62ee701a7f0ffdc47381a1
#	URL http://ftp.gnome.org/pub/gnome/sources/glib/2.53/glib-2.53.3.tar.xz
#	URL_HASH SHA256=ad727874057d369bf5f77f3ed32e2c50488672c99e62ee701a7f0ffdc47381a1
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND  env
		-S "LDFLAGS=\"-L${CMAKE_BINARY_DIR}/dep-install/lib -lffi\""
		PKG_CONFIG=${PKG_CONFIG_EXECUTABLE}
		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig
		LIBFFI_CFLAGS=-I${FFI_INCLUDE_DIR}
		LIBFFI_LIBS=-lffi
		CPPFLAGS=-I${CMAKE_BINARY_DIR}/dep-install/include
		PATH=${CMAKE_BINARY_DIR}/dep-install/bin:$ENV{PATH}
	./configure  --prefix=${CMAKE_BINARY_DIR}/dep-install --with-pcre
	BUILD_COMMAND make
)

