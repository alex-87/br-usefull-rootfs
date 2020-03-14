################################################################################
#
# NlohmannJson
#
################################################################################

NJSON_VERSION = 3.7.3
NJSON_SITE = $(call github,nlohmann,json,v$(NJSON_VERSION))

NJSON_INSTALL_STAGING = YES
NJSON_INSTALL_TARGET = YES

NJSON_LICENSE = MIT
NJSON_LICENSE_FILES = LICENSE.MIT

$(eval $(cmake-package))
$(eval $(host-cmake-package))

