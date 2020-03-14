################################################################################
#
# Pistache
#
################################################################################

PISTACHE_VERSION = 8b04ca8c3a3fec636124837f7554bc46f671ce70
PISTACHE_SITE = $(call github,oktal,pistache,$(PISTACHE_VERSION))

PISTACHE_INSTALL_STAGING = YES
PISTACHE_INSTALL_TARGET = YES

PISTACHE_LICENSE = APACHE-2.0
PISTACHE_LICENSE_FILES = LICENSE

PISTACHE_CONF_OPTS = -DPISTACHE_ENABLE_NETWORK_TESTS=false

$(eval $(cmake-package))
$(eval $(host-cmake-package))

