import pytest
from pyunderstand import foo, __version__

def test_foo_returns_bar():
    assert foo() == "bar"

def test_version_exists():
    assert isinstance(__version__, str)
    assert len(__version__) > 0 