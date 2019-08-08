# This is a file used and owned by the ModusToolbox IDE. Users should not modify this file.
DEVICE=CY8C6247BZI-D54
################################################################################
# \file modus.mk
# \version 1.0
#
# \brief
# This file has two purposes.
# - The first purpose is to provide information to the makefile build system.
# - The second purpose is to provide information to any IDE about the example.
#   Therefore, this file should not contain anything other than make variables.
#
################################################################################
# \copyright
# Copyright 2018-2019 Cypress Semiconductor Corporation
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

#
# Toolchain, its optimization level and the configuration (Debug/Release) type
#
TOOLCHAIN=GCC
OPTIMIZATION = Og
CONFIG = Debug

# Define custom linker script location (<ABSOLUTE PATH>/customScript.ld)
# CY_MAINAPP_CM0P_LINKER_SCRIPT=
# CY_MAINAPP_CM4_LINKER_SCRIPT=

#
# Vector Floating-point flag (soft/hard) selection
# 
VFP_FLAG = soft

#
# The target platform for the example.
#
PLATFORMS_VERSION = 1.0
PLATFORM=PSOC6_DUAL_CORE

#
# The name of this example.  This is used as a default name for
# any IDE that is creating a new project based on this example
#
CY_EXAMPLE_NAME = TFTemWin

#
# For an IDE, this is the description of the example project to display
#
CY_EXAMPLE_DESCRIPTION = emWin TFT example for CY8CKIT-028-TFT shield

#
# If this is true, this example is shown as part of the new project dialog
# process in and IDE.  If this is false, this is not shown
#
CY_SHOW_NEW_PROJECT = true

#
# This is the list of valid platforms for this example
#
CY_VALID_PLATFORMS = PSOC6_DUAL_CORE

#
# This is the required SDK for this example
#
CY_REQUIRED_SDK = Cypress SDK[1.1]

#
# The list of valid devices for this example.  If this is empty
# there this example works for all devices
#
CY_VALID_DEVICES = 
    
    
#
# The source code for the CM0+ application
#
CY_APP_CM0P_SOURCE = \

#
# The source code for the CM4 application
#
CY_APP_CM4_SOURCE = \
	Source/cy8ckit_028_tft/cy8ckit_028_tft.c\
	Source/cy8ckit_028_tft/cy8ckit_028_tft.h\
	Source/CypressLogo.c\
	Source/ExampleImage.c\
	Source/main.c\
	Source/emWin_config/LCDConf.c\
	Source/emWin_config/LCDConf.h

#
# Paths to use for ModusToolbox IDE 
#
CY_LOCAL_INCLUDE_CM0P = $(CY_GENERATED_DIR)/$(CYMAINAPP_CM0P_NAME)
CY_LOCAL_INCLUDE_CM4 = $(CY_GENERATED_DIR)/$(CYMAINAPP_CM4_NAME)

#
# Includes specific to the CM0+ application
#
APP_MAINAPP_CM0P_INCLUDES = \
	-IGeneratedSource\

#
# Includes specific to the CM4 application
#
APP_MAINAPP_CM4_INCLUDES = \
	-IGeneratedSource\
	-I$(CY_LOCAL_INCLUDE_CM4)/Source\
	-I$(CY_LOCAL_INCLUDE_CM4)/Source/cy8ckit_028_tft

#
# Flags specific to the CM0+ application
#
APP_MAINAPP_CM0P_FLAGS =

#
# Flags specific to the CM4 application
#
APP_MAINAPP_CM4_FLAGS =

#
# Defines specific to the CM0+ application
#
APP_MAINAPP_CM0P_DEFINES = \
	-DAPP_NAME='"$(CY_EXAMPLE_NAME)_cm0p"'

#
# Defines specific to the CM4 application
#
APP_MAINAPP_CM4_DEFINES = \
	-DAPP_NAME='"$(CY_EXAMPLE_NAME)_cm4"'

#
# Any software (middleware) components needed by CM0+
#
CY_MAINAPP_CM0P_SWCOMP_USED = \

#
# Any software (middleware) components needed by CM4
#
CY_MAINAPP_SWCOMP_USED = \
    $(CY_PSOC_LIB_COMP_MIDDLEWARE_BASE)/emWin/code/config/nos\
    $(CY_PSOC_LIB_COMP_MIDDLEWARE_BASE)/emWin/code/include/nosnts_softfp\
    $(CY_PSOC_LIB_COMP_MIDDLEWARE_BASE)/emWin/code/drivers/FlexColor

#
# Software (middleware) components for CM4 with files, modified by example
#
CY_MAINAPP_SWCOMP_EXT = \
    $(CY_PSOC_LIB_COMP_MIDDLEWARE_BASE)/emWin/code/drivers/FlexColor/config

#
# The path to the design.modus file
#
CYCONFIG_DESIGN_MODUS = design.modus

#
# The set of generated source files
#
CYCONFIG_GENERATED_SOURCES = \

#
# Check to be sure we can find the SDK.  The SDK is found via the
# CYSDK environment variable
#
ifndef CYSDK
$(error The SDK must be defined via the CYSDK environment variable)
endif

#
# Include the main makefile for building this type of example
#
include $(CYSDK)/libraries/platforms-$(PLATFORMS_VERSION)/common/find_platform.mk
