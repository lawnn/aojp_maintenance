#!/bin/bash

ANDROID_HOME=$PWD

REVISION=cm-13.0

func_fetch() {
    REMOTE=$1
    NAME=$2
    DIR=$3

    cd $DIR
    git fetch git@github.com:$REMOTE/$NAME.git $REVISION
    git merge FETCH_HEAD
    git push
    cd $ANDROID_HOME
}

# platform
#func_fetch CyanogenMod android android
#func_fetch CyanogenMod android_build build
#func_fetch CyanogenMod android_bionic bionic
#func_fetch CyanogenMod android_frameworks_av frameworks/av
#func_fetch CyanogenMod android_frameworks_base frameworks/base
#func_fetch CyanogenMod android_packages_apps_Settings packages/apps/Settings
#func_fetch CyanogenMod android_frameworks_native frameworks/native
#func_fetch CyanogenMod android_system_core system/core
#func_fetch CyanogenMod android_packages_apps_Nfc packages/apps/Nfc

# vendor
#func_fetch CyanogenMod android_vendor_cm vendor/cm

# recovery
#func_fetch CyanogenMod android_bootable_recovery bootable/recovery-cm
#func_fetch omnirom android_bootable_recovery bootable/recovery-twrp android-6.0 android-6.0

#---------------------------------------
# Samsung
#---------------------------------------
#hardware 
func_fetch CyanogenMod android_hardware_samsung hardware/samsung

# device
func_fetch CyanogenMod android_device_samsung_qcom-common device/samsung/qcom-common
#func_fetch CyanogenMod android_device_samsung_msm8660-common device/samsung/msm8660-common
func_fetch CyanogenMod android_device_samsung_msm8960-common device/samsung/msm8960-common
#func_fetch CyanogenMod android_device_samsung_msm8974-common device/samsung/msm8974-common
#func_fetch CyanogenMod android_device_samsung_celox-common device/samsung/celox-common
#func_fetch CyanogenMod android_device_samsung_skyrocket device/samsung/celoxdcm
#func_fetch CyanogenMod android_device_samsung_quincy-common device/samsung/quincy-common
#func_fetch CyanogenMod android_device_samsung_quincyatt device/samsung/quincydcm
#func_fetch CyanogenMod android_device_samsung_galaxys2-common device/samsung/galaxys2-common
#func_fetch CyanogenMod android_device_samsung_i9100 device/samsung/sc02c
func_fetch CyanogenMod android_device_samsung_d2-common device/samsung/d2-common
func_fetch CyanogenMod android_device_samsung_d2att device/samsung/d2dcm
#func_fetch CyanogenMod android_device_samsung_jf-common device/samsung/jf-common
#func_fetch CyanogenMod android_device_samsung_jflteatt device/samsung/jfltedcm
#func_fetch CyanogenMod android_device_samsung_hlte device/samsung/hltedcm
#func_fetch CyanogenMod android_device_samsung_hlte-common device/samsung/hlte-common
#func_fetch CyanogenMod android_device_samsung_smdk4412-common device/samsung/smdk4412-common
#func_fetch CyanogenMod android_device_samsung_smdk4412-qcom-common device/samsung/smdk4412-qcom-common
#func_fetch CyanogenMod android_device_samsung_i9305 device/samsung/sc03e
#func_fetch CyanogenMod android_device_samsung_t0lte device/samsung/sc02e
#func_fetch CyanogenMod android_device_samsung_klte-common device/samsung/klte-common
#func_fetch CyanogenMod android_device_samsung_klte device/samsung/kltedcm

# kernel
#func_fetch CyanogenMod android_kernel_samsung_msm8660-common kernel/samsung/msm8660-dcm
#func_fetch CyanogenMod android_kernel_samsung_d2 kernel/samsung/d2dcm
#func_fetch CyanogenMod android_kernel_samsung_smdk4412 kernel/samsung/exynos4412dcm
#func_fetch CyanogenMod android_kernel_samsung_jf kernel/samsung/jfdcm
#func_fetch CyanogenMod android_kernel_samsung_hlte kernel/samsung/hlte
#func_fetch CyanogenMod android_kernel_samsung_klte kernel/samsung/klte

# vendor
#func_fetch TheMuppets proprietary_vendor_samsung vendor/samsung

#---------------------------------------
# LGE
#---------------------------------------
# device
#func_fetch CyanogenMod android_device_lge_g2-common device/lge/g2-common
#func_fetch CyanogenMod android_device_lge_ls980 device/lge/lgl22

#kernel
#func_fetch CyanogenMod  android_kernel_lge_msm8974 kernel/lge/msm8974
# vendor
#func_fetch TheMuppets proprietary_vendor_lge vendor/lge
