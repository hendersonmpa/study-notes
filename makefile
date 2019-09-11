SHELL=/bin/bash
OUT_DIR=./pdf/


all: $(OUT_DIR)faod.pdf $(OUT_DIR)lysosomal_storage_disease.pdf  $(OUT_DIR)mitochondrial_disease.pdf \
$(OUT_DIR)urea_cycle.pdf clean

$(OUT_DIR)faod.pdf: ./faod/fao/fao.org ./faod/faod_routine_testing/faod_routine_testing.org \
./faod/mito_faod/mito_faod.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	faod.org \
	-f org-latex-export-to-pdf
	mv -v faod.pdf $(OUT_DIR)faod.pdf


$(OUT_DIR)lysosomal_storage_disease.pdf: ./lsd/fabry/fabry.org ./lsd/gaucher/gaucher.org \
./lsd/GM1_2/GM1_2.org ./lsd/krabbe/krabbe.org ./lsd/mps/mps.org ./lsd/mucolipidosis/mucolipidosis.org \
./lsd/niemann_pick/niemann_pick.org ./lsd/sphingolipid_synthesis/sphingolipid_synthesis.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	lysosomal_storage_disease.org \
	-f org-latex-export-to-pdf
	mv -v lysosomal_storage_disease.pdf $(OUT_DIR)lysosomal_storage_disease.pdf


$(OUT_DIR)mitochondrial_disease.pdf: ./mitochondria/etc/etc.org ./mitochondria/mitochondria/mitochondria.org \
./mitochondria/oxphos_disorders/oxphos_disorders.org ./mitochondria/pyruvate/pyruvate.org ./mitochondria/tca/tca.org 
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	mitochondrial_disease.org \
	-f org-latex-export-to-pdf
	mv -v mitochondrial_disease.pdf $(OUT_DIR)mitochondrial_disease.pdf

$(OUT_DIR)urea_cycle.pdf: ./urea_cycle/ammonia/ammonia.org ./urea_cycle/otc_diag/otc_diag.org \
./urea_cycle/ucd_nbs/ucd_nbs.org 
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	urea_cycle.org \
	-f org-latex-export-to-pdf
	mv -v urea_cycle.pdf $(OUT_DIR)urea_cycle.pdf

clean :
	rm -f *.tex
	rm -f *.aux
	rm -f *.bcf
	rm -f *.bbl
	rm -f *.out
	rm -f *.xml
	rm -f *.blg
	rm -f *.lo?
	rm -f *.toc
	rm -f *-blx.bib
