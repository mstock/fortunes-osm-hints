COOKIES := osm-hints
DAT     := $(addsuffix .dat,$(COOKIES))

all: $(DAT)

%.dat: %
		strfile $<

check:
		for COOKIE in $(COOKIES) ; \
		do \
			echo -n "Testing $$COOKIE..."; \
			if egrep -q ".{72}." $$COOKIE ; then \
				echo " failed length check"; \
				echo "Fortune cookie file contains a line longer than 72 characters"; \
				exit 1; \
			fi; \
			echo " passed " ; \
		done;

clean:
		rm -fv *.dat
