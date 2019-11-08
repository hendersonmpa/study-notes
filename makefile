SHELL=/bin/bash
OUT_DIR=./notes/


all: $(OUT_DIR)faod.pdf $(OUT_DIR)organic_acids.pdf $(OUT_DIR)organelles.pdf \
$(OUT_DIR)mitochondrial_disease.pdf $(OUT_DIR)urea_cycle.pdf $(OUT_DIR)carbohydrate.pdf \
$(OUT_DIR)conditions.pdf clean

$(OUT_DIR)faod.pdf: ./faod/faod.org ./faod/fao/fao.org ./faod/faod_routine_testing/faod_routine_testing.org \
./faod/mito_faod/mito_faod.org 
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./faod/faod.org \
	-f org-latex-export-to-pdf
	mv -v ./faod/faod.pdf $(OUT_DIR)faod.pdf

$(OUT_DIR)organic_acids.pdf: ./organic_acids/organic_acids/organic_acids.org ./organic_acids/pa/pa.org \
./organic_acids/bcaa_oa/bcaa_oa.org  ./organic_acids/mma/mma.org  ./organic_acids/mcd/mcd.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./organic_acids/organic_acids.org \
	-f org-latex-export-to-pdf
	mv -v ./organic_acids/organic_acids.pdf $(OUT_DIR)organic_acids.pdf

$(OUT_DIR)organelles.pdf: ./organelles/organelles.org ./organelles/fabry/fabry.org \
./organelles/farber/farber.org ./organelles/gaucher/gaucher.org ./organelles/GM1_2/GM1_2.org \
./organelles/krabbe/krabbe.org ./organelles/mld/mld.org ./organelles/mps/mps.org \
./organelles/mucolipidosis/mucolipidosis.org ./organelles/oligosaccharidoses/oligosaccharidoses.org \
./organelles/niemann_pick/niemann_pickab.org ./organelles/niemann_pick/niemann_pickc.org \
./organelles/sphingolipid_synthesis/sphingolipid_synthesis.org ./organelles/peroxisomes/peroxisomes.org \
./organelles/cdg/cdg.org ./organelles/cystinosis/cystinosis.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./organelles/organelles.org \
	-f org-latex-export-to-pdf
	mv -v ./organelles/organelles.pdf $(OUT_DIR)organelles.pdf

$(OUT_DIR)mitochondrial_disease.pdf: ./mitochondria/mitochondrial_disease.org ./mitochondria/etc/etc.org \
./mitochondria/mitochondria/mitochondria.org ./mitochondria/oxphos_disorders/oxphos_disorders.org \
./mitochondria/pyruvate/pyruvate.org ./mitochondria/tca/tca.org 
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./mitochondria/mitochondrial_disease.org \
	-f org-latex-export-to-pdf
	mv -v mitochondria/mitochondrial_disease.pdf $(OUT_DIR)mitochondrial_disease.pdf

$(OUT_DIR)urea_cycle.pdf: ./urea_cycle/urea_cycle.org ./urea_cycle/ammonia/ammonia.org ./urea_cycle/otc_diag/otc_diag.org \
./urea_cycle/ucd_nbs/ucd_nbs.org 
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./urea_cycle/urea_cycle.org \
	-f org-latex-export-to-pdf
	mv -v ./urea_cycle/urea_cycle.pdf $(OUT_DIR)urea_cycle.pdf

$(OUT_DIR)carbohydrate.pdf: ./carbohydrate/carbohydrate.org ./carbohydrate/carbohydrate_metabolism/carbohydrate_metabolism.org \
./carbohydrate/galactose/galactose.org ./carbohydrate/hepatic_glycogenoses/hepatic_glycogenoses.org \
./carbohydrate/muscle_cardiac_glycogenoses/muscle_cardiac_glycogenoses.org \
./carbohydrate/glycolysis_ppp/glycolysis_ppp.org ./carbohydrate/fructose/fructose.org \
./carbohydrate/insulin/insulin.org ./carbohydrate/glucose_transport/glucose_transport.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./carbohydrate/carbohydrate.org \
	-f org-latex-export-to-pdf
	mv -v ./carbohydrate/carbohydrate.pdf $(OUT_DIR)carbohydrate.pdf

$(OUT_DIR)conditions.pdf: ./conditions/conditions.org ./conditions/cancer.org ./conditions/clinical.org ./conditions/complex.org ./conditions/cytogenetics.org ./conditions/metabolics.org \
./conditions/molecular.org ./conditions/neurogenetics.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./conditions/conditions.org \
	-f org-latex-export-to-pdf
	mv -v ./conditions/conditions.pdf $(OUT_DIR)conditions.pdf


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
	rm -f *.bbl
