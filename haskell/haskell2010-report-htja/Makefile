all	: trim sub

trim	: FileTrans.hs trim.hs
	ghc --make -i. $@

sub	: FileTrans.hs sub.hs
	ghc --make -i. $@

clean	:
	-rm *~ *.hi *.o

very-clean	: clean
	-rm trim sub
