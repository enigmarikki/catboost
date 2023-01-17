RESOURCES_LIBRARY()



SET(YMAKE_PYTHON3_LINUX sbr:3046144506)
SET(YMAKE_PYTHON3_DARWIN sbr:3046143862)
SET(YMAKE_PYTHON3_DARWIN_ARM64 sbr:3046142272)
SET(YMAKE_PYTHON3_WINDOWS sbr:3046143163)
SET(YMAKE_PYTHON3_LINUX_PPC64LE sbr:3046141538)

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    YMAKE_PYTHON3
    ${YMAKE_PYTHON3_DARWIN} FOR DARWIN
    ${YMAKE_PYTHON3_DARWIN_ARM64} FOR DARWIN-ARM64
    ${YMAKE_PYTHON3_LINUX} FOR LINUX
    ${YMAKE_PYTHON3_LINUX_PPC64LE} FOR LINUX-PPC64LE
    ${YMAKE_PYTHON3_WINDOWS} FOR WIN32
)

IF (OS_LINUX)
    IF (ARCH_PPC64LE)
        DECLARE_EXTERNAL_RESOURCE(EXTERNAL_YMAKE_PYTHON3 ${YMAKE_PYTHON3_LINUX_PPC64LE})
    ELSEIF(ARCH_X86_64)
        DECLARE_EXTERNAL_RESOURCE(EXTERNAL_YMAKE_PYTHON3 ${YMAKE_PYTHON3_LINUX})
    ENDIF()
ELSEIF (OS_DARWIN)
    IF (ARCH_ARM64)
        DECLARE_EXTERNAL_RESOURCE(EXTERNAL_YMAKE_PYTHON3 ${YMAKE_PYTHON3_DARWIN_ARM64})
    ELSEIF(ARCH_X86_64)
        DECLARE_EXTERNAL_RESOURCE(EXTERNAL_YMAKE_PYTHON3 ${YMAKE_PYTHON3_DARWIN})
    ENDIF()
ELSEIF (OS_WINDOWS)
    DECLARE_EXTERNAL_RESOURCE(EXTERNAL_YMAKE_PYTHON3 ${YMAKE_PYTHON3_WINDOWS})
ENDIF()

END()
