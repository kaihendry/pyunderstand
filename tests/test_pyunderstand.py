import pytest
from pyunderstand import foo


def test_foo_returns_bar():
    assert foo() == "barty"
