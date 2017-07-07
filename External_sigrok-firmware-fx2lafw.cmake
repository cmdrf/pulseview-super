ExternalProject_Add(sigrok-firmware-fx2lafw
	URL http://sigrok.org/download/binary/sigrok-firmware-fx2lafw/sigrok-firmware-fx2lafw-bin-0.1.5.tar.gz
	URL_MD5 752bd3112c3314f244b18be42610eba8
	BUILD_IN_SOURCE On
	CONFIGURE_COMMAND ""
	BUILD_COMMAND ""
	INSTALL_COMMAND install -d ${CMAKE_BINARY_DIR}/dep-install/share/sigrok-firmware/ && install
		fx2lafw-braintechnology-usb-lps.fw
		fx2lafw-cwav-usbeeax.fw
		fx2lafw-cwav-usbeedx.fw
		fx2lafw-cwav-usbeesx.fw
		fx2lafw-cwav-usbeezx.fw
		fx2lafw-cypress-fx2.fw
		fx2lafw-hantek-6022be.fw
		fx2lafw-hantek-6022bl.fw
		fx2lafw-sainsmart-dds120.fw
		fx2lafw-saleae-logic.fw
		fx2lafw-sigrok-fx2-16ch.fw
		fx2lafw-sigrok-fx2-8ch.fw
	${CMAKE_BINARY_DIR}/dep-install/share/sigrok-firmware/
)
