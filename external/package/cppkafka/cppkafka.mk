################################################################################
#
# CPPKAFKA
#
################################################################################

CPPKAFKA_VERSION = 0.3.1
CPPKAFKA_SITE = $(call github,mfontanini,cppkafka,v$(CPPKAFKA_VERSION))

CPPKAFKA_LICENSE = BSD 2-Clause
CPPKAFKA_LICENSE_FILES = LICENSE

CPPKAFKA_INSTALL_STAGING = YES
CPPKAFKA_INSTALL_TARGET = YES

HOST_CPPKAFKA_DEPENDENCIES = librdkafka
CPPKAFKA_DEPENDENCIES = librdkafka

$(eval $(cmake-package))
$(eval $(host-cmake-package))

