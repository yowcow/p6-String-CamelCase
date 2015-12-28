.PHONY: test

test:
	PERL6LIB=lib prove -e perl6 -r t
