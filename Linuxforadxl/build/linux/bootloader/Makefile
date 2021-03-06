ifndef PETALINUX
$(error "Error: PETALINUX environment variable not set.  Change to the root of your PetaLinux install, and source the settings.sh file")
endif

include $(PETALINUX)/etc/logging/logging.mk

include Makefile.autoinclude

override TYPE:=bootloader

ifndef PROOT
$(error "Failed to build $(TYPE). No PetaLinux project is specified")
endif

ifndef INSTANCE
$(error "Failed to build $(TYPE). No instance specified")
endif

ifndef CONFIGROOT
$(error "Failed to build $(INSTANCE). No configuration root directory is specified")
endif

ifndef IMAGEROOT
$(error "Failed to build $(INSTANCE). No image directory is specified")
endif

ifndef SUBSYSTEM_CONFIG
$(error "Failed to build $(INSTANCE). No subsystem configuration file is specified")
endif

ifndef HW_DESCRIPTION
$(error "Failed to build $(INSTANCE). No hw-description is sepecified")
endif

include $(PETALINUX)/etc/build/common.mk

ifndef ARCH
$(error "Failed to build $(INSTANCE). No ARCH specified!")
endif

ifndef ENDIAN
$(error "Failed to build $(INSTANCE). No endian specified")
endif

dir_y:=$(dir_bootloader_y)
ifeq ($(dir_y),)
$(error "Failed to build $(INSTANCE). No selected $(INSTANCE)")
endif

BOOTLOADER_NAME=$(shell basename $(dir_y))
BOOTLOADER_SRC_DIR=$(PROOT)/components/$(TYPE)/$(BOOTLOADER_NAME)

SUBMAKEENV=ARCH=$(ARCH) ENDIAN=$(ENDIAN)
SUBMAKEENV+=PROOT=$(PROOT) SUBSYSTEM=$(SUBSYSTEM)
SUBMAKEENV+=PETALINUX_SEARCH_ROOT=$(PETALINUX_SEARCH_ROOT)

HSM_TCL_SCRIPT=$(PETALINUX)/etc/hsm/scripts/petalinux_hsm_bridge.tcl

.PHONY: all build pre-build post-build config pre-config post-config clean distclean mrproper

all: build post-build

.PHONY: autogen-bsp
autogen-bsp:
	# Generate the BSP
	@$(call do_info, "generate BSP for $(BOOTLOADER_NAME)")
	hsm -mode batch -source $(HSM_TCL_SCRIPT) -notrace -nojournal -nolog -tclargs "-c $(SUBSYSTEM_CONFIG) -a $(BOOTLOADER_NAME) -hdf $(SYSTEM_HDF) -o $(BOOTLOADER_SRC_DIR) -d $(PETALINUX)/etc/hsm/data"

$(PROOT)/components/$(TYPE)/$(BOOTLOADER_NAME):
	# Generate the bootloader
	@$(call do_info, "generate $@")
	hsm -mode batch -source $(HSM_TCL_SCRIPT) -notrace -nojournal -nolog -tclargs "-c $(SUBSYSTEM_CONFIG) -a $(BOOTLOADER_NAME) -hdf $(SYSTEM_HDF) -o $(BOOTLOADER_SRC_DIR) -d $(PETALINUX)/etc/hsm/data"

.PHONY: $(CURDIR)/$(BOOTLOADER_NAME)
$(CURDIR)/$(BOOTLOADER_NAME): $(PROOT)/components/$(TYPE)/$(BOOTLOADER_NAME)
	rsync -a "$(BOOTLOADER_SRC_DIR)/" "$@/"

oldconfig:
config:

pre-build:

build: $(PROOT)/components/$(TYPE)/$(BOOTLOADER_NAME) $(CURDIR)/$(BOOTLOADER_NAME)
	make -C $(BOOTLOADER_NAME) all
	[ ! -d $(IMAGEROOT) ] && mkdir -p $(IMAGEROOT); \
	rsync -a $(BOOTLOADER_NAME)/executable.elf $(IMAGEROOT)/$(BOOTLOADER_NAME).elf

post-build:
	make -C $(BOOTLOADER_NAME) all

clean:
	make -C $(BOOTLOADER_NAME) clean

pre-install:
install: $(IMAGEROOT)

post-install:

$(IMAGEROOT):
	mkdir -p "$@"

help:
	@echo ""
	@echo "Quick reference for various supported build targets for u-boot."
	@echo "----------------------------------------------------"
	@echo "  clean               clean out compiled files, but not config"
	@echo "  distclean           clean out all build files"
	@echo "  build               build u-boot"
	@echo "  install               install u-boot images to images/ directory"
	@echo "  <UBOOT_TARGET>_only make a specific u-boot target"
	@echo "  all                 configure build environment and build"


