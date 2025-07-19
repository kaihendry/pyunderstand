.PHONY: release

release:
	uv run bump-my-version bump --commit --tag patch
	git push --follow-tags
