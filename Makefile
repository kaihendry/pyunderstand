# Get the version from pyproject.toml.
# It expects a line like: version = "v0.1.2"
VERSION := $(shell grep '^version =' pyproject.toml | cut -d '"' -f 2)

.PHONY: release

release:
	@echo "Releasing version $(VERSION)..."
	gh release create $(VERSION) --generate-notes
	@echo "Successfully created release $(VERSION) on GitHub."
