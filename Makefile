%.md: %.jmd
	julia -e'using Weave; weave("$*.jmd", doctype="pandoc")'

%.ipynb: %.jmd
	julia -e'using Weave; convert_doc("$*.jmd", "$*.ipynb")'
