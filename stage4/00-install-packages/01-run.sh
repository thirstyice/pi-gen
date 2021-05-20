#!/bin/bash -e

install -v -m 644 files/conky.conf			"${ROOTFS_DIR}/etc/conky/"
install -v -m 644 files/conky.conf			"${ROOTFS_DIR}/etc/conky/"
install -v -m 644 files/autostart/conky.desktop		"${ROOTFS_DIR}/etc/xdg/autostart/"
install -v -m 644 files/geany.conf			"${ROOTFS_DIR}/usr/share/geany/"
install -v -m 644 files/ui_toolbar.xml			"${ROOTFS_DIR}/usr/share/geany/"
install -v -m 644 files/thirstyice.conf			"${ROOTFS_DIR}/usr/share/geany/colorschemes/"
install -v -m 644 files/org.geany.pkexec.geany.policy	"${ROOTFS_DIR}/usr/share/polkit-1/actions/"




on_chroot << EOF
update-alternatives --install /usr/bin/x-www-browser \
  x-www-browser /usr/bin/firefox 86
update-alternatives --install /usr/bin/gnome-www-browser \
  gnome-www-browser /usr/bin/firefox 86
update-alternatives --install /usr/bin/editor \
  editor /usr/bin/geany 86
EOF


