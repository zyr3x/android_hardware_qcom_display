ifneq ($(filter msm8974 msm8960 msm8660 msm7x27a msm7x27 msm7x30,$(TARGET_BOARD_PLATFORM)),)
ifeq ($(TARGET_QCOM_DISPLAY_VARIANT),)
display-hals := libgralloc libgenlock libcopybit
display-hals += libhwcomposer liboverlay libqdutils libexternal libqservice
ifneq ($(TARGET_PROVIDES_LIBLIGHT),true)
display-hals += liblight
endif
include $(call all-named-subdir-makefiles,$(display-hals))
endif
endif
