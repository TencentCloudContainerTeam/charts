SHELL := /bin/bash

.PHONY: index
index:
	./control.sh index
.PHONY: pkg
pkg:
	./control.sh pkg