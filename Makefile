.PHONY: book-manger-apis

book-manger-apis:
	$(info --------> Generate Go)
	protoc -I ./apis/pb/book-manager/ \
	--go_out=. \
	--go_opt=module=github.com/breeve/book-store \
	$(shell find ./apis/pb/book-manager/ -iname "*.proto")
