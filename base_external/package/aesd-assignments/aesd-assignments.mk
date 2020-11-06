
##############################################################
#
# FINAL-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 78050c956cc18e644d84dc64cc3d1ee7b8aa7201
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
	$(INSTALL) -m 0755 $(@D)/adxl335 $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/adxl335-start-stop $(TARGET_DIR)/etc/init.d/S99adxl335
endef

$(eval $(generic-package))
