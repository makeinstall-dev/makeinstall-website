PORT ?= 8000

.DEFAULT_GOAL := help
.PHONY: help serve

help: ## Show the available commands
	@grep -E '^[a-z-]+:.*## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*## "} {printf "  make %-8s %s\n", $$1, $$2}'

serve: ## Preview the site locally (PORT=9000 make serve to change the port)
	@echo "Serving site/ at http://localhost:$(PORT)  (Ctrl+C to stop)"
	@python3 -m http.server $(PORT) --directory site
