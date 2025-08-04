# Fix missing atomic ops on aarch64
EXTRA_OECMAKE:append = " -DCMAKE_C_FLAGS='-latomic' -DCMAKE_CXX_FLAGS='-latomic' "

# Or explicitly link atomic at do_compile
LDFLAGS:append = " -latomic"
