$(objpfx)md5test: $(patsubst %, $(objpfx)%.o,$(md5-routines))
$(objpfx)md5test-giant: $(patsubst %, $(objpfx)%.o,$(md5-routines))
$(objpfx)sha256test: $(patsubst %, $(objpfx)%.o,$(sha256-routines))
$(objpfx)sha512test: $(patsubst %, $(objpfx)%.o,$(sha512-routines))
tests := cert md5c-test sha256c-test sha512c-test badsalttest
tests += md5test sha256test sha512test
$(objpfx)md5test: $(patsubst %, $(objpfx)%.o,$(md5-routines))
$(objpfx)md5test-giant: $(patsubst %, $(objpfx)%.o,$(md5-routines))
$(objpfx)sha256test: $(patsubst %, $(objpfx)%.o,$(sha256-routines))
$(objpfx)sha512test: $(patsubst %, $(objpfx)%.o,$(sha512-routines))
$(addprefix $(objpfx),$(tests)): /usr/lib/x86_64-linux-gnu/libcrypt.so
$(addprefix $(objpfx),$(tests)): /usr/lib/x86_64-linux-gnu/libcrypt.a
