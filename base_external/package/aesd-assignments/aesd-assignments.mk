
##############################################################
#
# FINAL-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 6a6cbb970538eadefb22fe26dcb581b32bed549f
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-5013/final-project-pshiralagi-1.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/usr/bin/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/usr/bin/conf/
	$(INSTALL) -m 0755 $(@D)/digital/digital $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/socket/client $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/tmp102/tmp102 $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/i2c-start-stop.sh $(TARGET_DIR)/etc/init.d/S97i2c
	$(INSTALL) -m 0755 $(@D)/client-start-stop.sh $(TARGET_DIR)/etc/init.d/S99client
	$(INSTALL) -m 0755 $(@D)/digital-start-stop.sh $(TARGET_DIR)/etc/init.d/S98digital
endef

$(eval $(generic-package))
