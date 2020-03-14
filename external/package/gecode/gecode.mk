################################################################################
#
# Gecode
#
################################################################################

GECODE_VERSION = 6.2.0
GECODE_SITE = $(call github,Gecode,gecode,release-$(GECODE_VERSION))

GECODE_LICENSE = MIT
GECODE_LICENSE_FILES = LICENSE

GECODE_INSTALL_STAGING = YES
GECODE_INSTALL_TARGET = YES

GECODE_CONF_OPTS = --disable-qt --disable-gist --disable-flatzinc --disable-examples

$(eval $(autotools-package))
$(eval $(host-autotools-package))

