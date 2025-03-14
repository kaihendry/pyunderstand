# PyUnderstand

A simple demonstration Python library.

## Development Setup

1. Create and activate a virtual environment:

```bash
# Create a virtual environment
python -m venv venv

# Activate the virtual environment
# On macOS/Linux:
source venv/bin/activate
# On Windows:
# venv\Scripts\activate
```

2. Install the library in development mode:

```bash
# Make sure you're in the project root directory
pip install -e .
```

3. Install development dependencies:

```bash
pip install -r requirements-dev.txt
```

## Usage

```python
from pyunderstand import foo

# Call the foo function
result = foo()  # Prints library information and returns "bar"
print(result)   # Outputs: "bar"
```

## Features

- Simple `foo()` function that returns "bar"
- Displays library version and information when called
- Automated dependency updates via Dependabot

## Testing

Run the tests using pytest:

```bash
pytest tests/
```

For coverage report:

```bash
pytest tests/ --cov=pyunderstand
```

## Dependency Management

This project uses GitHub's Dependabot to keep dependencies up to date:
- Weekly checks for Python package updates
- Weekly checks for GitHub Actions updates
- Automated pull requests for version updates
- Security vulnerability alerts

## Versioning

This library follows [Semantic Versioning](https://semver.org/). The current version is defined in `pyunderstand/__init__.py`.

- Major version: Breaking changes
- Minor version: New features, no breaking changes
- Patch version: Bug fixes, no breaking changes

## Publishing to PyPI

To publish a new version:

1. Update `__version__` in `pyunderstand/__init__.py`
2. Create and push a new tag:
```bash
git tag v0.1.0
git push origin v0.1.0
```
3. Build and publish:
```bash
python -m pip install --upgrade build twine
python -m build
python -m twine upload dist/*
```

## Development

To deactivate the virtual environment when you're done:

```bash
deactivate
```

## Using from GitHub

You can install directly from your GitHub repository:

```bash
pip install git+https://github.com/kaihendry/pyunderstand.git
``` 