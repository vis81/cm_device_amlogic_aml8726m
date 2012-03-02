#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=aml8726m
MANUFACTURER=amlogic

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/alsa_ctl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/alsa_ctl
adb pull /system/bin/memsicd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/memsicd
adb pull /system/bin/remotecfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/remotecfg
adb pull /system/etc/asound.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/asound.conf
adb pull /system/etc/asound.state ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/asound.state
adb pull /system/etc/remote.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/remote.conf
adb pull /system/lib/egl/libEGL_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_mali.so
adb pull /system/lib/egl/libGLESv1_CM_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_mali.so
adb pull /system/lib/egl/libGLESv2_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_mali.so
adb pull /system/lib/hw/acoustics.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/acoustics.default.so
adb pull /system/lib/hw/alsa.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/alsa.default.so
adb pull /system/lib/hw/audio.primary.amlogic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/audio.primary.amlogic.so
adb pull /system/lib/hw/gralloc.amlogic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.amlogic.so
adb pull /system/lib/hw/hwcomposer.amlogic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hwcomposer.amlogic.so
adb pull /system/lib/hw/lights.amlogic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lights.amlogic.so
adb pull /system/lib/hw/sensors.amlogic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors.amlogic.so
adb pull /system/lib/libMali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libMali.so
adb pull /system/lib/libUMP.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libUMP.so
adb pull /system/lib/libasound.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libasound.so
adb pull /system/lib/modules/mali.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/mali.ko
adb pull /system/lib/modules/ump.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ump.ko
adb pull /system/usr/share/alsa/alsa.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/alsa.conf
adb pull /system/usr/share/alsa/cards/aliases.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/aliases.conf
adb pull /system/usr/share/alsa/init/00main ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/00main
adb pull /system/usr/share/alsa/init/default ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/default
adb pull /system/usr/share/alsa/init/hda ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hda
adb pull /system/usr/share/alsa/init/help ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/help
adb pull /system/usr/share/alsa/init/info ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/info
adb pull /system/usr/share/alsa/init/test ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/test
adb pull /system/usr/share/alsa/pcm/center_lfe.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/center_lfe.conf
adb pull /system/usr/share/alsa/pcm/default.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/default.conf
adb pull /system/usr/share/alsa/pcm/dmix.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/dmix.conf
adb pull /system/usr/share/alsa/pcm/dpl.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/dpl.conf
adb pull /system/usr/share/alsa/pcm/dsnoop.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/dsnoop.conf
adb pull /system/usr/share/alsa/pcm/front.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/front.conf
adb pull /system/usr/share/alsa/pcm/iec958.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/iec958.conf
adb pull /system/usr/share/alsa/pcm/modem.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/modem.conf
adb pull /system/usr/share/alsa/pcm/rear.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/rear.conf
adb pull /system/usr/share/alsa/pcm/side.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/side.conf
adb pull /system/usr/share/alsa/pcm/surround40.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/surround40.conf
adb pull /system/usr/share/alsa/pcm/surround41.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/surround41.conf
adb pull /system/usr/share/alsa/pcm/surround50.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/surround50.conf
adb pull /system/usr/share/alsa/pcm/surround51.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/surround51.conf
adb pull /system/usr/share/alsa/pcm/surround71.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/surround71.conf

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
#PRODUCT_COPY_FILES := \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/XXX:obj/lib/XXX

# All the blobs necessary for aml8726m
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/alsa_ctl:system/bin/alsa_ctl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/memsicd:system/bin/memsicd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/remotecfg:system/bin/remotecfg \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/asound.conf:system/etc/asound.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/asound.state:system/etc/asound.state \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/remote.conf:system/etc/remote.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_mali.so:system/lib/egl/libEGL_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/acoustics.default.so:system/lib/hw/acoustics.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/alsa.default.so:system/lib/hw/alsa.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/audio.primary.amlogic.so:system/lib/hw/audio.primary.amlogic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.amlogic.so:system/lib/hw/gralloc.amlogic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hwcomposer.amlogic.so:system/lib/hw/hwcomposer.amlogic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.amlogic.so:system/lib/hw/lights.amlogic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.amlogic.so:system/lib/hw/sensors.amlogic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libMali.so:system/lib/libMali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libUMP.so:system/lib/libUMP.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libasound.so:system/lib/libasound.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/mali.ko:system/lib/modules/mali.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ump.ko:system/lib/modules/ump.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/alsa.conf:system/usr/share/alsa/alsa.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/aliases.conf:system/usr/share/alsa/cards/aliases.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/00main:system/usr/share/alsa/init/00main \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/default:system/usr/share/alsa/init/default \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hda:system/usr/share/alsa/init/hda \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/help:system/usr/share/alsa/init/help \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/info:system/usr/share/alsa/init/info \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/test:system/usr/share/alsa/init/test \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/center_lfe.conf:system/usr/share/alsa/pcm/center_lfe.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/default.conf:system/usr/share/alsa/pcm/default.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/dmix.conf:system/usr/share/alsa/pcm/dmix.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/dpl.conf:system/usr/share/alsa/pcm/dpl.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/dsnoop.conf:system/usr/share/alsa/pcm/dsnoop.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/front.conf:system/usr/share/alsa/pcm/front.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/iec958.conf:system/usr/share/alsa/pcm/iec958.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/modem.conf:system/usr/share/alsa/pcm/modem.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rear.conf:system/usr/share/alsa/pcm/rear.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/side.conf:system/usr/share/alsa/pcm/side.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround40.conf:system/usr/share/alsa/pcm/surround40.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround41.conf:system/usr/share/alsa/pcm/surround41.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround50.conf:system/usr/share/alsa/pcm/surround50.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround51.conf:system/usr/share/alsa/pcm/surround51.conf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/surround71.conf:system/usr/share/alsa/pcm/surround71.conf

# All the apks necessary for aml8726m
#PRODUCT_PACKAGES += \\
#    XXX

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),aml8726m)
LOCAL_PATH:=\$(call my-dir)

# Module makefile rules for apks on aml8726m

# XXX

#include \$(CLEAR_VARS)

#LOCAL_MODULE := XXX
#LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
#include \$(BUILD_PREBUILT)

endif

EOF

./setup-makefiles.sh
