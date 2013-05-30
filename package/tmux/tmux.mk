#############################################################
#
# tmux
#
#############################################################

TMUX_VERSION = 1.8
TMUX_SITE = http://downloads.sourceforge.net/tmux/tmux-$(TMUX_VERSION).tar.gz
TMUX_LICENSE = GPLv2+
TMUX_LICENSE_FILES = COPYING
TMUX_DEPENDENCIES = libevent
TMUX_CONF_OPT = --disable-static

$(eval $(autotools-package))
