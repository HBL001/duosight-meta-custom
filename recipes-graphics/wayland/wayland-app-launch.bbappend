# yes we have seen it, but once is enough
# disable the wayland graphics demo

SYSTEMD_SERVICE:remove = "wayland-app-launch.service"
