# determine how many processors are present
CPU_CORES=`cat /proc/cpuinfo | grep -m1 "cpu cores" | sed s/".*: "//`
# The command to run lilypond
LILY_CMD = lilypond -ddelete-intermediate-files \
                    -dno-point-and-click -djob-count=$(CPU_CORES)
PDFDIR = pdf

# The suffixes used in this Makefile.
#.SUFFIXES: .ly .ily .pdf .midi
.SUFFIXES: .ly .pdf

# The pattern rule to create PDF and MIDI files from a LY input file.
# The .pdf output files are put into the `PDF' subdirectory, and the
# .midi files go into the `MIDI' subdirectory.
#%.pdf %.midi: %.ly
.SECONDEXPANSION:
$(PDFDIR)/%.pdf: %.ly $$(shell echo "%" | cut -d"-" -f1).ily
	@mkdir -p $(dir $@)
	@echo
	@echo "----------- Creating $(notdir $@) -----------"
	$(LILY_CMD) $<; \
	if test -f "$(notdir $*).pdf"; then \
	    mv "$(notdir $*).pdf" $(PDFDIR)/$(subst .ly,.pdf,$<); \
	fi; \
#	if test -f "$(notdir $*).midi"; then \
#	    mv "$(notdir $*).midi" $(MIDIDIR)/$(subst .ly,.pdf,$<); \
#	fi

songs=$(shell find . -name "*.ly" | grep -v template)

pdfs=$(addprefix $(PDFDIR)/,$(songs:.ly=.pdf))

all: $(pdfs)

print-%  : ; @echo $* = $($*)

clean:
	rm -rf $(PDFDIR)
