FILENAME=cfa3000-unlocked

${FILENAME}.pdf: ${FILENAME}.tex
	rubber --pdf --module xelatex ${FILENAME}.tex

clean:
	rm -f ${FILENAME}.aux ${FILENAME}.log ${FILENAME}.nav ${FILENAME}.out ${FILENAME}.rubbercache ${FILENAME}.snm ${FILENAME}.toc ${FILENAME}.vrb

present:
	pdfpc -W -d 45 cfa3000-unlocked.pdf

.PHONY: clean present
