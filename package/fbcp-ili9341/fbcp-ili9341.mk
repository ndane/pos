################################################################################
#
# fbcp-ili9341
#
################################################################################

FBCP_ILI9341_VERSION = e9f5fe0458f616d346e1949c0a691367ea9070a5 
FBCP_ILI9341_SITE = $(call github,ndane,fbcp-ili9341,$(FBCP_ILI9341_VERSION))
FBCP_ILI9341_INSTALL_STAGING = NO
FBCP_ILI9341_CONF_OPTS = -DST7789=ON -DDISPLAY_CROPPED_INSTEAD_OF_SCALING=ON -DGPIO_TFT_RESET_PIN=4 -DGPIO_TFT_DATA_CONTROL=17 -DSPI_BUS_CLOCK_DIVISOR=6 -DUSE_DMA_TRANSFERS=OFF -DSINGLE_CORE_BOARD=ON -DSTATISTICS=0
FBCP_ILI9341_DEPENDENCIES = rpi-userland libatomic_ops

$(eval $(cmake-package))
