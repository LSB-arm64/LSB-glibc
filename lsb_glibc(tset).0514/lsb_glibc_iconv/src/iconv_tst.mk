$(objpfx)iconv_prog: $(iconv_prog-modules:%=$(objpfx)%.o)
$(objpfx)iconvconfig: $(iconvconfig-modules:%=$(objpfx)%.o)
$(objpfx)test-iconvconfig.out: /dev/null $(objpfx)iconvconfig
tests	= tst-iconv1 tst-iconv2 tst-iconv3 tst-iconv4 tst-iconv5
