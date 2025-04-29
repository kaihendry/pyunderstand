import pytest

# problem is other code I work use "from shared.patterns.blah import yikes"
from python.airflow.shared import yikes


def test_yikes_returns_bar():
    assert yikes() == "irc"
