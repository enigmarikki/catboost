# Generated by devtools/yamaker.

LIBRARY()

LICENSE(Zlib)



VERSION(1.2.11)

ADDINCL(
    GLOBAL contrib/libs/zlib/include
)

NO_COMPILER_WARNINGS()

NO_RUNTIME()

SRCS(
    adler32.c
    compress.c
    crc32.c
    deflate.c
    gzclose.c
    gzlib.c
    gzread.c
    gzwrite.c
    infback.c
    inffast.c
    inflate.c
    inftrees.c
    trees.c
    uncompr.c
    zutil.c
)

END()
