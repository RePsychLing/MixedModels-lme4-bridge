%.md: %.jmd
	julia -e'using Pkg; Pkg.activate("."); using Weave; weave("$*.jmd", doctype="pandoc")'

%.ipynb: %.jmd
	julia -e'using Pkg; Pkg.activate("."); using Weave; convert_doc("$*.jmd", "$*.ipynb")'
