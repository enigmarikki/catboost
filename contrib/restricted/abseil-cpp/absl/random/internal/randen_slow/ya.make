# Generated by devtools/yamaker.

LIBRARY()

WITHOUT_LICENSE_TEXTS()



LICENSE(Apache-2.0)

PEERDIR(
    contrib/restricted/abseil-cpp/absl/random/internal/randen_round_keys
)

ADDINCL(
    GLOBAL contrib/restricted/abseil-cpp
)

NO_COMPILER_WARNINGS()

NO_UTIL()

CFLAGS(
    -DNOMINMAX
)

SRCDIR(contrib/restricted/abseil-cpp/absl/random/internal)

SRCS(
    randen_slow.cc
)

END()
