VERSION := $(shell grep '^version =' pyproject.toml | cut -d '"' -f 2)

.PHONY: release

release:
	uvx bump-my-version bump --commit --tag patch
	gh release create v$(VERSION) --generate-notes
