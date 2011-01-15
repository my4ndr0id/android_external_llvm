LOCAL_PATH:= $(call my-dir)

mc_SRC_FILES :=	\
        ELFObjectWriter.cpp	\
	MachObjectWriter.cpp	\
	MCAsmInfo.cpp	\
	MCAsmInfoCOFF.cpp	\
	MCAsmInfoDarwin.cpp	\
	MCAsmStreamer.cpp	\
	MCAssembler.cpp	\
	MCCodeEmitter.cpp	\
	MCContext.cpp	\
	MCDisassembler.cpp	\
        MCELFStreamer.cpp	\
	MCExpr.cpp	\
	MCInst.cpp	\
	MCInstPrinter.cpp	\
        MCLabel.cpp	\
        MCLoggingStreamer.cpp	\
	MCMachOStreamer.cpp	\
	MCNullStreamer.cpp	\
        MCObjectStreamer.cpp	\
	MCObjectWriter.cpp	\
	MCSection.cpp	\
        MCSectionCOFF.cpp	\
	MCSectionELF.cpp	\
	MCSectionMachO.cpp	\
	MCStreamer.cpp	\
	MCSymbol.cpp	\
	MCValue.cpp	\
        WinCOFFObjectWriter.cpp	\
        WinCOFFStreamer.cpp	\
	TargetAsmBackend.cpp

# For the host
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mc_SRC_FILES)

LOCAL_MODULE:= libLLVMMC

LOCAL_MODULE_TAGS := optional


include $(LLVM_HOST_BUILD_MK)
include $(BUILD_HOST_STATIC_LIBRARY)

# For the device
# =====================================================
include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(mc_SRC_FILES)

LOCAL_MODULE:= libLLVMMC

LOCAL_MODULE_TAGS := optional

include $(LLVM_DEVICE_BUILD_MK)
include $(BUILD_STATIC_LIBRARY)
