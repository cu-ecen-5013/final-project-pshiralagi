
##############################################################
#
# LDD
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 272d597249da2f8bb5d421c9d887bb846d5612cd
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-5013/assignment-7-pshiralagi.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

BR2_ROOTFS_OVERLAY = ../base_external/rootfs_overlay

define LDD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) scull
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) misc-modules
endef

LDD_MODULE_SUBDIRS = misc-modules
LDD_MODULE_SUBDIRS += scull

$(eval $(kernel-module))
$(eval $(generic-package))
