cluedo.pdf: cluedo_4.ps
	ps2pdf $< $@

cluedo_4.ps: cluedo.ps
	gs -sDEVICE=ps2write $< $< $< $< | psnup -4 -pa4 -Pa5 > $@

cluedo.ps: cluedo.dvi
	dvips -t A5 -o $@ $<

cluedo.dvi: cluedo.tex
	latex $<

