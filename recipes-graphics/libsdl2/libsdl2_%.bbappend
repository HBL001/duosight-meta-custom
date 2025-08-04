# Disable X11, enable Wayland & KMS/DRM + GLES2 for target **and** host SDK
PACKAGECONFIG:remove = "x11"
PACKAGECONFIG:append = " wayland kmsdrm gles2"
