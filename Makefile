
exec:
	ocamlc nums.cma -I src src/NC_Gasbi.ml tests/examples.ml -o exec && ./exec

clean:
	rm -rf exec */*.cmi */*.cmo *~
