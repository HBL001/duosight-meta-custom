ROOTFS_POSTPROCESS_COMMAND:append = " disable_wayland_demo; "

disable_wayland_demo () {
    rm -f ${IMAGE_ROOTFS}/etc/systemd/system/graphical.target.wants/wayland-app-launch.service || true
}
