.DEFAULT_GOAL := all

.PHONY: install
install:
	poetry install

.PHONY: lint
lint:
	flake8 PROJECT_NAME/ tests/

.PHONY: tests
tests:
	pytest

.PHONY: mypy
mypy:
	mypy PROJECT_NAME

.PHONY: all
all: tests lint mypy

.PHONY: clean
clean:
	rm -rf `find . -name __pycache__`
	rm -f `find . -type f -name '*.py[co]' `
	rm -f `find . -type f -name '*~' `
	rm -f `find . -type f -name '.*~' `
	rm -rf .cache
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf htmlcov
	rm -rf *.egg-info
	rm -f .coverage
	rm -f .coverage.*
	rm -f coverage.*
	rm -rf build
	rm -rf dist
