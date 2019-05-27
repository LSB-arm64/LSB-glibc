$(objpfx)tst_fgetgrent.out: tst_fgetgrent.sh $(objpfx)tst_fgetgrent
tests := testgrp tst-putgrent
test-srcs :=  tst_fgetgrent
tests-special += $(objpfx)tst_fgetgrent.out
