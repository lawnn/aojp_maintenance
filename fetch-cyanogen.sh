#!/bin/bash

ANDROID_HOME=$PWD

REVISION=cm-11.0

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

func_fetch CyanogenMod android android
func_fetch CyanogenMod android_framework_base framework/base


# vendor
func_fetch TheMuppets proprietary_vendor_samsung vendor/samsung
func_fetch CyanogenMod android_vendor_cm vendor/cm

# recovery
func_fetch CyanogenMod android_bootable_recovery bootable/recovery

# common
func_fetch CyanogenMod android_device_samsung_qcom-common device/samsung/qcom-common
#func_fetch CyanogenMod android_device_samsung_msm8660-common device/samsung/msm8660-common
func_fetch CyanogenMod android_device_samsung_msm8960-common device/samsung/msm8960-common
func_fetch CyanogenMod android_device_samsung_smdk4412-common device/samsung/smdk4412-common
func_fetch CyanogenMod android_device_samsung_smdk4412-qcom-common device/samsung/smdk4412-qcom-common
#func_fetch CyanogenMod android_device_samsung_celox-common device/samsung/celox-common
#func_fetch CyanogenMod android_device_samsung_quincy-common device/samsung/quincy-common
func_fetch CyanogenMod android_device_samsung_d2-common device/samsung/d2-common
#func_fetch CyanogenMod android_device_samsung_galaxys2-common device/samsung/galaxys2-common
func_fetch CyanogenMod android_device_samsung_jf-common device/samsung/jf-common
func_fetch CyanogenMod android_hardware_samsung hardware/samsung

# device
#func_fetch CyanogenMod android_device_samsung_quincyatt device/samsung/quincydcm
func_fetch CyanogenMod android_device_samsung_jflteatt device/samsung/jfltedcm
func_fetch CyanogenMod android_device_samsung_d2att device/samsung/d2dcm
func_fetch CyanogenMod android_device_samsung_i9305 device/samsung/sc03e
#func_fetch CyanogenMod android_device_samsung_i9100 device/samsung/sc02c
#func_fetch CyanogenMod android_device_samsung_t0lte device/samsung/sc02e
#func_fetch CyanogenMod android_device_samsung_skyrocket device/samsung/celoxdcm

# kernel
#func_fetch CyanogenMod android_kernel_samsung_msm8660 kernel/samsung/msm8660-dcm
#func_fetch CyanogenMod android_kernel_samsung_d2 kernel/samsung/d2dcm
#func_fetch CyanogenMod android_kernel_samsung_exynos4210jpn kernel/samsung/exynos4210jpn
#func_fetch CyanogenMod kernel_samsung_exynos4412 kernel/samsung/exynos4412dcm

