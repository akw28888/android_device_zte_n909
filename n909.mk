#
# Copyright 2014 The Android Open Source Project
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The GPS configuration appropriate for this device.
$(call inherit-product, device/common/gps/gps_as_supl.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/n909/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio.usb.default \
    audio_policy.msm7x27a \
    libaudioutils

PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    memtrack.msm7x27a \
    libtilerenderer \
    libqdMetaData \
    libgenlock \
    libqdutils \
    libmemalloc \
    liboverlay \
    libqservice

PRODUCT_PACKAGES += \
    librs_jni \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxVdec \
    libOmxVenc \
    qcmediaplayer

PRODUCT_PACKAGES += \
    gps.msm7x27a \
    lights.msm7x27a

# FM Radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    hwmac \
    make_ext4fs \
    setup_fs \
    e2fsck \
    resize2fs

PRODUCT_PACKAGES += \
    Stk

# Files
PRODUCT_COPY_FILES += \
    device/zte/n909/rootdir/init.qcom.rc:root/init.qcom.rc \
    device/zte/n909/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/zte/n909/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/zte/n909/rootdir/fstab.qcom:root/fstab.qcom \
    device/zte/n909/rootdir/init.target.rc:root/init.target.rc \
    device/zte/n909/rootdir/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh

PRODUCT_COPY_FILES += \
    device/zte/n909/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/n909/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/zte/n909/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/zte/n909/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/zte/n909/keylayout/Generic.kl:system/usr/keylayout/Generic.kl

PRODUCT_COPY_FILES += \
    device/zte/n909/configs/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

PRODUCT_COPY_FILES += \
    device/zte/n909/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/zte/n909/configs/apns-conf.xml:system/etc/apns-conf.xml \
    device/zte/n909/configs/thermald.conf:system/etc/thermald.conf \
    device/zte/n909/configs/thermald-8x25-1008000_therm.conf:system/etc/thermald-8x25-1008000_therm.conf \
    device/zte/n909/configs/thermald-8x25-1104000_therm.conf:system/etc/thermald-8x25-1104000_therm.conf \
    device/zte/n909/configs/thermald-8x25-1152000_therm.conf:system/etc/thermald-8x25-1152000_therm.conf \
    device/zte/n909/configs/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/zte/n909/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh

PRODUCT_COPY_FILES += \
    device/zte/n909/configs/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/zte/n909/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/zte/n909/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/n909/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    device/zte/n909/configs/audio_policy.conf:system/etc/audio_policy.conf \

PRODUCT_COPY_FILES += \
    device/zte/n909/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/zte/n909/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/zte/n909/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/zte/n909/idc/Synaptics_RMI4.idc:system/usr/idc/Synaptics_RMI4.idc \
    device/zte/n909/idc/Fts-touchscreen.idc:system/usr/idc/Fts-touchscreen.idc \
    device/zte/n909/idc/syna-touchscreen.idc:system/usr/idc/syna-touchscreen.idc \
    device/zte/n909/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/zte/n909/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/zte/n909/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# Properties

# Media
PRODUCT_COPY_FILES += \
    device/zte/n909/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/n909/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/zte/n909/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# transmitter isn't supported
PRODUCT_PROPERTY_OVERRIDES += \
#    ro.fm.mulinst.recording.support=false \
#    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false

PRODUCT_PROPERTY_OVERRIDES += \
    headset.hook.delay=500

PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.remote.autoconnect=true \
    ro.bluetooth.request.master=true \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.dun=true \
    ro.qualcomm.bluetooth.ftp=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.max.fling_velocity=4000 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=32m \
    dalvik.vm.heapsize=64m

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage,adb \
    ro.vold.umsdirtyratio=50

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/zte/n909/n909-vendor.mk)
