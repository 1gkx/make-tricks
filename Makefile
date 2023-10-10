.PHONY: help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%s\033[0m\t%s\n", $$1, $$2 }' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help