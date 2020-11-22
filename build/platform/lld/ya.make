RESOURCES_LIBRARY()



IF (OS_ANDROID)
    # Use lld shipped with Android NDK
    LDFLAGS("-fuse-ld=lld")
ELSE()
    IF (HOST_OS_LINUX)
        IF (HOST_ARCH_PPC64LE)
            DECLARE_EXTERNAL_RESOURCE(LLD_ROOT sbr:1843381106)
        ELSE()
            DECLARE_EXTERNAL_RESOURCE(LLD_ROOT sbr:1843327433)
        ENDIF()
    ELSEIF (HOST_OS_DARWIN)
        DECLARE_EXTERNAL_RESOURCE(LLD_ROOT sbr:1843327928)
    ENDIF()

    LDFLAGS("-fuse-ld=$LLD_ROOT_RESOURCE_GLOBAL/ld")
ENDIF()

END()
