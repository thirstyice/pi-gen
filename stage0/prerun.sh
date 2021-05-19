#!/bin/bash -e

if [ ! -d "${ROOTFS_DIR}" ] || [ "${USE_QCOW2}" = "1" ]; then
	bootstrap ${RELEASE} "${ROOTFS_DIR}" http://raspbian.raspberrypi.org/raspbian/
fi

echo "PRETTY_NAME=\"${IMG_NAME} ${IMG_VERSION} ${RELEASE}\"
NAME=\"${IMG_NAME}\"
VERSION_ID=\"${VERSION}\"
VERSION=\"${VERSION} (${RELEASE})\"
VERSION_CODENAME=${RELEASE}
ID=${IMG_NAME}
ID_LIKE=debian
HOME_URL=\"http://www.raspbian.org/\"
SUPPORT_URL=\"http://www.raspbian.org/RaspbianForums\"
BUG_REPORT_URL=\"http://www.raspbian.org/RaspbianBugs\"
" > files/os-release

install -v -m 644 files/os-release "${ROOTFS_DIR}/usr/lib/"
