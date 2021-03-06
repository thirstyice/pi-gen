#!/bin/bash -e

install -v -m 644 files/uca.xml			"${ROOTFS_DIR}/etc/xdg/Thunar/"
install -v -m 644 files/help.rc			"${ROOTFS_DIR}/etc/xdg/xfce4/"
install -v -m 644 files/helpers.rc		"${ROOTFS_DIR}/etc/xdg/xfce4/"
install -v -m 644 files/keyboards.xml		"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"
install -v -m 644 files/xfce4-desktop.xml	"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"
install -v -m 644 files/xfce4-panel.xml		"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"
ln -sfn ../xfconf/xfce-perchannel-xml/xfce4-panel.xml "${ROOTFS_DIR}/etc/xdg/xfce4/panel/default.xml"
install -v -m 644 files/xfwm4.xml		"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"
install -v -m 644 files/xsettings.xml		"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"

install -v -m 644 files/panel/datetime-7.rc	"${ROOTFS_DIR}/etc/xdg/xfce4/panel/"
install -v -m 644 files/panel/whiskermenu-1.rc	"${ROOTFS_DIR}/etc/xdg/xfce4/panel/"
install -v -m 644 files/defaults.list		"${ROOTFS_DIR}/etc/xfce4/"
install -v -m 644 files/defaults		"${ROOTFS_DIR}/usr/share/xfwm4/"
install -v -m 644 files/volumeicon.desktop	"${ROOTFS_DIR}/etc/xdg/autostart/"


cp -v -r files/Tela-circle			"${ROOTFS_DIR}/usr/share/icons/"
chmod -v -R 755 "${ROOTFS_DIR}/usr/share/icons/Tela-circle/"
cp -r -v files/Tela-circle-dark			"${ROOTFS_DIR}/usr/share/icons/"
chmod -v -R 755 "${ROOTFS_DIR}/usr/share/icons/Tela-circle-dark/"
cp -v -r files/WhiteSur-dark-solid		"${ROOTFS_DIR}/usr/share/themes/"
chmod -v -R 755 "${ROOTFS_DIR}/usr/share/themes/WhiteSur-dark-solid/"

install -v -m 644 files/lightdm-gtk-greeter.conf "${ROOTFS_DIR}/etc/lightdm/"
install -v -m 644 files/login-background.svg	"${ROOTFS_DIR}/usr/share/lightdm/"
install -v -m 644 files/01_thirstyOS.conf	"${ROOTFS_DIR}/usr/share/lightdm/lightdm.conf.d/"

install -v -m 644 files/lxterminal.conf		"${ROOTFS_DIR}/usr/share/lxterminal/"

install -v -m 644 files/com.ubuntu.pkexec.thunar.policy	"${ROOTFS_DIR}/usr/share/polkit-1/actions/"

install -v -m 644 files/volumeicon-alsa_0.5.1+git20171004-thirstyice_armhf.deb\
						"${ROOTFS_DIR}/var/cache/apt/archives/"
on_chroot << EOF
dpkg -i /var/cache/apt/archives/volumeicon-alsa_0.5.1+git20171004-thirstyice_armhf.deb
apt-get purge -y dhcpcd5
EOF