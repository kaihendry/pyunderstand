# Get the version from pyproject.toml.
# It expects a line like: version = "0.1.2"
VERSION := $(shell grep '^version =' pyproject.toml | cut -d '"' -f 2)

.PHONY: bump-patch bump-minor bump-major release help

help:
	@echo "Available targets:"
	@echo "  bump-patch  - Bump patch version, commit, and tag"
	@echo "  bump-minor  - Bump minor version, commit, and tag" 
	@echo "  bump-major  - Bump major version, commit, and tag"
	@echo "  release     - Create GitHub release for current version"

bump-patch:
	@echo "Bumping patch version..."
	uv run bump-my-version bump --commit --tag patch
	@echo "Version bumped and committed with tag."

bump-minor:
	@echo "Bumping minor version..."
	uv run bump-my-version bump --commit --tag minor
	@echo "Version bumped and committed with tag."

bump-major:
	@echo "Bumping major version..."
	uv run bump-my-version bump --commit --tag major
	@echo "Version bumped and committed with tag."

release:
	@echo "Releasing version $(VERSION)..."
	gh release create v$(VERSION) --generate-notes
	@echo "Successfully created release v$(VERSION) on GitHub."
