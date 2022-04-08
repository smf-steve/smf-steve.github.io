DIRS=home classes projects publications cv

all: $(DIRS)

$(DIRS):
	cd $@ ; make -f ../makefile index.html


index.html: index.shtml above.phtml below.phtml menu.phtml
	cat above.phtml menu.phtml index.shtml below.phtml > index.html

.PHONY: all $(DIRS)
