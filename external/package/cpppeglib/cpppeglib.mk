################################################################################
#
# CPP-PEGLIB
#
################################################################################

CPPPEGLIB_VERSION = 0.1.5
CPPPEGLIB_SITE = $(call github,yhirose,cpp-peglib,V$(CPPPEGLIB_VERSION))

CPPPEGLIB_LICENSE = MIT
CPPPEGLIB_LICENSE_FILES = LICENSE

CPPPEGLIB_INSTALL_STAGING = YES
CPPPEGLIB_INSTALL_TARGET = YES

$(eval $(cmake-package))
$(eval $(host-cmake-package))
