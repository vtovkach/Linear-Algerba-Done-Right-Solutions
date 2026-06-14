TEXS = $(wildcard *.tex)

all:
	mkdir -p build pdfs
	for f in $(TEXS); do \
		pdflatex -output-directory=build $$f; \
		mv build/$${f%.tex}.pdf pdfs/; \
	done

clean:
	rm -rf build pdfs