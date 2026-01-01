# Makefile for compiling LaTeX documents with amznotes class

# LaTeX compiler (xelatex or lualatex - both work with fontspec)
# -shell-escape is needed for minted package (code highlighting)
LATEX = xelatex -shell-escape

# Main document name (without .tex extension)
MAIN = main

# Output PDF name
PDF = $(MAIN).pdf

# All LaTeX source files
TEX_FILES = $(wildcard *.tex)

# Auxiliary files to clean
AUX_FILES = *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz

.PHONY: all pdf build clean clean-all help view

# Default target
all: pdf

# Build PDF - run LaTeX multiple times for TOC and references
pdf: $(PDF)
build: pdf

$(PDF): $(MAIN).tex
	@echo "Compiling LaTeX document (pass 1/2)..."
	$(LATEX) -interaction=nonstopmode $(MAIN).tex || (echo "Error in first pass. Check $(MAIN).log for details." && exit 1)
	@echo "Compiling LaTeX document (pass 2/2)..."
	$(LATEX) -interaction=nonstopmode $(MAIN).tex || (echo "Error in second pass. Check $(MAIN).log for details." && exit 1)
	@echo "PDF generated: $(PDF)"

# View the PDF (requires a PDF viewer)
view: $(PDF)
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(PDF); \
	elif command -v open > /dev/null; then \
		open $(PDF); \
	else \
		echo "Please open $(PDF) manually"; \
	fi

# Clean auxiliary files
clean:
	@echo "Cleaning auxiliary files..."
	rm -f $(AUX_FILES)

# Clean everything including PDF
clean-all: clean
	@echo "Cleaning PDF..."
	rm -f $(PDF)

# Help message
help:
	@echo "Available targets:"
	@echo "  make          - Build the PDF (default, no viewing)"
	@echo "  make pdf      - Build the PDF only (no viewing)"
	@echo "  make build    - Build the PDF only (alias for 'make pdf')"
	@echo "  make view     - Build and open the PDF"
	@echo "  make clean    - Remove auxiliary files (.aux, .log, etc.)"
	@echo "  make clean-all - Remove auxiliary files and PDF"
	@echo "  make help     - Show this help message"

