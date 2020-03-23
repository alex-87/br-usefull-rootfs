################################################################################
#
# librdkafka
#
################################################################################

LIBRDKAFKA_VERSION = 1.3.0
LIBRDKAFKA_SITE = $(call github,edenhill,librdkafka,v$(LIBRDKAFKA_VERSION))

LIBRDKAFKA_INSTALL_STAGING = YES
LIBRDKAFKA_INSTALL_TARGET = YES

LIBRDKAFKA_LICENSE_FILES = LICENSE

HOST_LIBRDKAFKA_DEPENDENCIES = boost
LIBRDKAFKA_DEPENDENCIES = boost

$(eval $(cmake-package))
$(eval $(host-cmake-package))

