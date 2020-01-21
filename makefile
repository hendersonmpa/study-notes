SHELL=/bin/bash
OUT_DIR=./notes/

all: $(OUT_DIR)faod.pdf $(OUT_DIR)organic_acids.pdf $(OUT_DIR)organelles.pdf \
$(OUT_DIR)mitochondrial_disease.pdf $(OUT_DIR)urea_cycle.pdf $(OUT_DIR)carbohydrate.pdf \
$(OUT_DIR)lipids_bile.pdf $(OUT_DIR)misc.pdf $(OUT_DIR)vitamins.pdf $(OUT_DIR)aa.pdf \
$(OUT_DIR)methods.pdf $(OUT_DIR)conditions.pdf $(OUT_DIR)tnt.pdf clean

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
./mitochondria/pyruvate/pyruvate.org ./mitochondria/tca/tca.org ./mitochondria/ketones/ketones.org \
./mitochondria/creatine/creatine.org
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

$(OUT_DIR)lipids_bile.pdf: ./lipids_bile/lipids_bile.org ./lipids_bile/bile/bile.org \
./lipids_bile/lipoprotein/lipoprotein.org ./lipids_bile/tg_pl/tg_pl.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./lipids_bile/lipids_bile.org \
	-f org-latex-export-to-pdf
	mv -v ./lipids_bile/lipids_bile.pdf $(OUT_DIR)lipids_bile.pdf

$(OUT_DIR)misc.pdf: ./misc/misc.org ./misc/pp/pp.org ./misc/porphyrins/porphyrins.org \
./misc/metal/metal.org ./misc/peptides/peptides.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./misc/misc.org \
	-f org-latex-export-to-pdf
	mv -v ./misc/misc.pdf $(OUT_DIR)misc.pdf

$(OUT_DIR)vitamins.pdf: ./vitamins/vitamins.org ./vitamins/biotin/biotin.org \
./vitamins/b12b9/b12b9.org ./vitamins/b1b6/b1b6.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./vitamins/vitamins.org \
	-f org-latex-export-to-pdf
	mv -v ./vitamins/vitamins.pdf $(OUT_DIR)vitamins.pdf

$(OUT_DIR)aa.pdf: ./aa/aa.org ./aa/phe/phe.org ./aa/tyr/tyr.org ./aa/sulfur/sulfur.org \
./aa/orn_pro/orn_pro.org ./aa/lys/lys.org ./aa/nkh/nkh.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./aa/aa.org \
	-f org-latex-export-to-pdf
	mv -v ./aa/aa.pdf $(OUT_DIR)aa.pdf

$(OUT_DIR)conditions.pdf: ./conditions/conditions.org ./conditions/cancer.org ./conditions/clinical.org \
./conditions/complex.org ./conditions/cytogenetics.org ./conditions/metabolics.org \
./conditions/molecular.org ./conditions/neurogenetics.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./conditions/conditions.org \
	-f org-latex-export-to-pdf
	mv -v ./conditions/conditions.pdf $(OUT_DIR)conditions.pdf

$(OUT_DIR)methods.pdf: ./methods/ac/ac.org ./methods/aa/aa.org ./methods/oa/oa.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./methods/methods.org \
	-f org-latex-export-to-pdf
	mv -v ./methods/methods.pdf $(OUT_DIR)methods.pdf

$(OUT_DIR)tnt.pdf: ./tnt/tnt.org
	emacs -u "$(id -un)" \
	--batch \
	--eval '(load user-init-file)' \
	./tnt/tnt.org \
	-f org-latex-export-to-pdf
	mv -v ./tnt/tnt.pdf $(OUT_DIR)tnt.pdf

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
