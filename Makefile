example: ## example command
	@echo "this example command"

###############################################################
.PHONY: help
help: ## display this help
	awk 'BEGIN {FS = ":.*##"; printf "Usage: make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m -%s\n", $$1, $$2 }' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

$(VERBOSE).SILENT: