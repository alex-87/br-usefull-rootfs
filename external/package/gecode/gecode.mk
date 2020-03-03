################################################################################
#
# Gecode
#
################################################################################

GECODE_VERSION = 6.2.0
GECODE_SITE = $(call github,Gecode,gecode,release-$(GECODE_VERSION))

GECODE_LICENSE = MIT
GECODE_LICENSE_FILE = LICENSE

GECODE_INSTALL_TARGET = YES
GECODE_CONF_OPTS = --disable-qt --disable-gist --disable-flatzinc

$(eval $(autotools-package))

