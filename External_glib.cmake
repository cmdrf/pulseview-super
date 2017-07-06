find_path(FFI_INCLUDE_DIR ffi.h PATHS /usr/include PATH_SUFFIXES ffi)
if(FFI_INCLUDE_DIR)
	message("ffi.h found in ${FFI_INCLUDE_DIR}")
else()
	message(FATAL_ERROR "ffi.h not found")
endif()

find_library(FFI_LIBRARY NAMES libffi.dylib libffi.so ffi.dll)
if(NOT FFI_LIBRARY)
	message(FATAL_ERROR "libffi not found")
endif()

ExternalProject_Add(glib
	DEPENDS gettext
#	DEPENDS pkg-config
	URL http://ftp.gnome.org/pub/gnome/sources/glib/2.52/glib-2.52.3.tar.xz
	URL_HASH SHA256=25ee7635a7c0fcd4ec91cbc3ae07c7f8f5ce621d8183511f414ded09e7e4e128
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND  env
#		PKG_CONFIG=${CMAKE_BINARY_DIR}/dep-install/bin/pkg-config
#		PKG_CONFIG_PATH=${CMAKE_BINARY_DIR}/dep-install/lib/pkgconfig
		LIBFFI_CFLAGS=-I${FFI_INCLUDE_DIR}
		LIBFFI_LIBS=${FFI_LIBRARY}
		CPPFLAGS=-I${CMAKE_BINARY_DIR}/dep-install/include
		LDFLAGS=-L${CMAKE_BINARY_DIR}/dep-install/lib
		PATH=${CMAKE_BINARY_DIR}/dep-install/bin:$ENV{PATH}
	./configure  --prefix=${CMAKE_BINARY_DIR}/dep-install --with-pcre
	BUILD_COMMAND make
)

