# ================= Architecture =================
# Primary Arch
TARGET_ARCH				:= arm64
TARGET_ARCH_VARIANT		:= armv8-a
TARGET_CPU_ABI			:= arm64-v8a
TARGET_CPU_VARIANT		:= cortex-a76

# Secondary Arch
TARGET_2ND_ARCH			:= arm
TARGET_2ND_ARCH_VARIANT	:= armv7-a-neon
TARGET_2ND_CPU_ABI		:= armeabi-v7a
TARGET_2ND_CPU_ABI2		:= armeabi
TARGET_2ND_CPU_VARIANT	:= generic
# ================= END =================

# error: "libgbm_mesa_wrapper (SHARED_LIBRARIES android-arm64) 
# missing libgbm_mesa (SHARED_LIBRARIES android-arm64)"
# https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/10183?commit_id=8621bd8d5e67173281c6a6dd64054d4b0366f023#23d9dc374eea33a36aee5ab6431635c4ddbf10ca
# https://github.com/raspberry-vanilla/android_external_mesa3d
BOARD_MESA3D_BUILD_LIBGBM := true
BOARD_MESA3D_USES_MESON_BUILD := true