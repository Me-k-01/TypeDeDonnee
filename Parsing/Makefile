all: lang.cmo parser.cmo lexer.cmo interf.cmo
	ocamlc -o execParser $^ 
# Compilation of .ml files
lang.cmo: lang.ml
	ocamlc -c $<

interf.cmo: interf.ml lexer.cmo parser.cmo
	ocamlc -c $<

# ocaml lexer and parser

lexer.ml: lexer.mll lang.cmo
	ocamllex $<

parser.ml parser.mli: parser.mly lang.cmo
	ocamlyacc -v $<

lexer.cmo: lexer.ml parser.cmo
	ocamlc -c $<
parser.cmo: parser.ml parser.cmi lang.cmo
	ocamlc -c $<


#### Generic rules

%.cmi: %.mli
	ocamlc -c $<


.PHONY: clean

clean: 
	rm -f *.mli *.cmo *.cmi lexer.ml
