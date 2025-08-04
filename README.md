# duosight-meta-custom

This Yocto layer contains all customizations required to support the DuoSight project on the Toradex Verdin iMX8M Plus platform.

It includes hardware support patches, GUI rendering integration, and system extensions needed for thermal imaging, sensor communication, and display output.

---

## Layer Structure Overview

### `recipes-kernel/`
**`linux/linux-toradex_%.bbappend`**  
Appends to the Toradex kernel recipe to:
- Enable I2C, GPIO, and sensor-specific drivers
- Apply patches to support the MLX90640 IR thermal sensor
- Extend kernel functionality for custom hardware integration

### `recipes-connectivity/`
Patches and configuration for communication with external thermal sensors:
- Adds support for I²C-based MLX90640 communication
- Includes low-level GPIO drivers and I2C transport glue

### `recipes-graphics/`
Graphics subsystem integration:
- Ensures Qt5 GUI apps can display via HDMI using EGLFS or Wayland
- Optionally disables Toradex demo app (`wayland-app-launch.service`)
- Supports direct display of thermal frames via Qt or OpenGL

### `recipes-extended/`
Application logic and user-level tools:
- Thermal frame acquisition and summary statistics
- Optional command-line tools for sensor testing
- Launchers and test programs for DuoSight user experience

### `conf/`
Contains the layer configuration:
- Declares `duosight-meta-custom` as compatible with the `scarthgap` Yocto release
- Enables BitBake to locate this layer during parsing and image build

---

## 📦 Integration
To include this layer in your Yocto build, add it to `bblayers.conf`:
```bitbake
BBLAYERS += "/path/to/duosight-meta-custom"
```
Ensure any custom kernel config fragments and patches are applied using the standard `.bbappend` structure.

---

## 🛠 Maintainer
**Author:** Dr Richard Day  
**Project:** DuoSight  
**Platform:** Toradex Verdin iMX8M Plus (Torizon / Scarthgap)

