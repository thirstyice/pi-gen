#!/bin/bash -e

install -v -m 644 files/uca.xml			"${ROOTFS_DIR}/etc/xdg/Thunar/"
install -v -m 644 files/help.rc			"${ROOTFS_DIR}/etc/xdg/xfce4/"
install -v -m 644 files/helpers.rc		"${ROOTFS_DIR}/etc/xdg/xfce4/"
install -v -m 644 files/keyboards.xml		"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"
install -v -m 644 files/xfce4-desktop.xml	"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"
install -v -m 644 files/xfce4-panel.xml		"${ROOTFS_DIR}/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/"
install -v -m 644 files/panel/default.xml	"${ROOTFS_DIR}/etc/xdg/xfce4/panel/"
install -v -m 644 files/panel/datetime-7.rc	"${ROOTFS_DIR}/etc/xdg/xfce4/panel/"
install -v -m 644 files/panel/whiskermenu-1.rc	"${ROOTFS_DIR}/etc/xdg/xfce4/panel/"
install -v -m 644 files/defaults.list		"${ROOTFS_DIR}/etc/xfce4/"
install -v -m 644 files/defaults		"${ROOTFS_DIR}/usr/share/xfwm4/"


install -v -m 644 -d files/Tela-circle		"${ROOTFS_DIR}/usr/share/icons/"
install -v -m 644 -d files/Tela-circle-dark	"${ROOTFS_DIR}/usr/share/icons/"
install -v -m 644 -d files/WhiteSur-dark-solid	"${ROOTFS_DIR}/usr/share/themes/"
install -v -m 644 files/login-background.svg	"${ROOTFS_DIR}/usr/share/images/desktop-base/"
install -v -m 644 files/01_thirstyOS.conf	"${ROOTFS_DIR}/usr/share/lightdm/lightdm.conf.d/"

install -v -m 644 files/lxterminal.conf		"${ROOTFS_DIR}/usr/share/lxterminal/"

install -v -m 644 files/com.ubuntu.pkexec.thunar.policy.conf	"${ROOTFS_DIR}/usr/share/polkit-1/actions/"