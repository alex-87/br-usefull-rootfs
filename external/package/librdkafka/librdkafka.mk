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

$(eval $(autotools-package))
$(eval $(host-autotools-package))

