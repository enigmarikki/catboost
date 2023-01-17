RESOURCES_LIBRARY()



IF (NOT HOST_OS_DARWIN AND NOT HOST_OS_LINUX AND NOT HOST_OS_WINDOWS)
    MESSAGE(FATAL_ERROR Unsupported host platform for yolint)
ENDIF()

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    YOLINT
    sbr:2892202462 FOR DARWIN-ARM64
    sbr:2892202756 FOR DARWIN
    sbr:2892203527 FOR LINUX
    sbr:2892203271 FOR WIN32
)

DECLARE_EXTERNAL_HOST_RESOURCES_BUNDLE(
    YOLINT_NEXT
    sbr:2892202462 FOR DARWIN-ARM64
    sbr:2892202756 FOR DARWIN
    sbr:2892203527 FOR LINUX
    sbr:2892203271 FOR WIN32
)

END()
