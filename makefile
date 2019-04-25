all: .pack .unpack

.pack:
	tar cvjf hires.tar.bz2 hires
	gpg --yes --symmetric hires.tar.bz2
	touch .pack
	rm -f .unpack

.unpack:
	gpg --yes hires.tar.bz2.gpg
	tar xvjf hires.tar.bz2
	touch .unpack
	rm -f .pack
