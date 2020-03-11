################################################################################
#
# NlohmannJson
#
################################################################################

NJSON_VERSION = 3.7.3
NJSON_SITE = $(call github,nlohmann,json,v$(NJSON_VERSION))

NJSON_LICENSE = MIT
NJSON_LICENSE_FILE = LICENSE

$(eval $(cmake-package))
$(eval $(host-cmake-package))
