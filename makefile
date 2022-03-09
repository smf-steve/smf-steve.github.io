DIRS=home classes projects publications

all: $(DIRS)

$(DIRS):
	cd $@ ; make -f ../makefile index.html


index.html: index.shtml above.phtml below.phtml menu.phtml
	cat above.phtml menu.phtml index.shtml  > index.html

.PHONY: all $(DIRS)