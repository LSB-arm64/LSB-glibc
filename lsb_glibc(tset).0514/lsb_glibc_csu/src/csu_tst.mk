subdir_lib: $(extra-objs:%=$(objpfx)%)
$(objpfx)$(start-installed-name): $(objpfx)start.o $(objpfx)abi-note.o 				  $(objpfx)init.o
$(objpfx)S$(start-installed-name): $(objpfx)start.os $(objpfx)abi-note.o 				  $(objpfx)init.o
$(objpfx)g$(start-installed-name):   $(objpfx)g%: $(objpfx)S% $(objpfx)gmon-start.os
$(objpfx)g$(static-start-installed-name):   $(objpfx)g%: $(objpfx)% $(objpfx)gmon-start.o
$(addprefix $(objpfx),$(sort g$(start-installed-name) 			     g$(static-start-installed-name))):   $(objpfx)g%: $(objpfx)% $(objpfx)gmon-start.o
$(addprefix $(objpfx),$(filter-out $(start-installed-name), $(csu-dummies))):  $(before-compile)
$(objpfx)abi-tag.h: $(..)abi-tags
	sed -e 's/#.*$$//' -e '/^[	]*$$/d' $< | 	while read conf tagos tagver; do 	  test `expr '$(config-machine)-$(config-vendor)-$(config-os)' 		     : "$$conf"` != 0 || continue; 	  ( echo "$$tagos" | 	    sed -e 's/[^0-9xXa-fA-F 	]//' 		-e 's/^/#define __ABI_TAG_OS /'; 	    echo "#ifndef __ABI_TAG_VERSION"; 	    echo "$$tagver" | 	    sed -e 's/[^0-9xXa-fA-F]/ /g' -e 's/ *$$//' 	      -e 's/ /,/g' -e 's/^/# define __ABI_TAG_VERSION /'; 	    echo "#endif" ) > $@.new; 	done
$(objpfx)version-info.h: $(common-objpfx)config.make $(all-Banner-files)
tests := tst-empty tst-atomic tst-atomic-long
tests-static := tst-empty
