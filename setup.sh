#!/bin/bash

. load-config.sh

VARIANT=${VARIANT:-eng}
#PRODUCT_NAME=${PRODUCT_NAME:-full_${DEVICE}}
PRODUCT_NAME=${PRODUCT_NAME:-${DEVICE}}
DEVICE=${DEVICE:-${PRODUCT_NAME}}
LUNCH=${LUNCH:-${PRODUCT_NAME}-${VARIANT}}

export USE_CCACHE=yes &&
export GECKO_PATH &&
export GAIA_PATH &&
export GAIA_DOMAIN &&
export GAIA_PORT &&
export GAIA_DEBUG &&
export GECKO_OBJDIR &&
export B2G_NOOPT &&
export B2G_DEBUG &&
export MOZ_CHROME_MULTILOCALE &&
export L10NBASEDIR &&
export MOZ_B2G_DSDS &&
. build/envsetup.sh &&
lunch $LUNCH
