#############################################################
#
# rpi-firmware
#
#############################################################

RPI_FIRMWARE_VERSION = 57b604530d3c86edd5093d2a58c9d026fdfa7a7a
RPI_FIRMWARE_SITE = http://github.com/raspberrypi/firmware/tarball/master
RPI_FIRMWARE_LICENSE = BSD-3c
RPI_FIRMWARE_LICENSE_FILE = boot/LICENCE.broadcom

define RPI_FIRMWARE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/boot/bootcode.bin $(BINARIES_DIR)/rpi-firmware/bootcode.bin
	$(INSTALL) -D -m 0644 $(@D)/boot/start.elf $(BINARIES_DIR)/rpi-firmware/start.elf
	$(INSTALL) -D -m 0644 $(@D)/boot/start_cd.elf $(BINARIES_DIR)/rpi-firmware/start_cd.elf
	$(INSTALL) -D -m 0644 $(@D)/boot/fixup.dat $(BINARIES_DIR)/rpi-firmware/fixup.dat
	$(INSTALL) -D -m 0644 $(@D)/boot/fixup_cd.dat $(BINARIES_DIR)/rpi-firmware/fixup_cd.dat
	$(INSTALL) -D -m 0644 package/rpi-firmware/config.txt $(BINARIES_DIR)/rpi-firmware/config.txt
endef

$(eval $(generic-package))
