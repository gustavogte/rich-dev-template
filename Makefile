.PHONY: setup venv test run format lint install-dev

setup:
	python3 -m venv .venv && source .venv/bin/activate && pip install -U pip

venv:
	source .venv/bin/activate

install-dev:
	pip install -r requirements-dev.txt

test:
	source .venv/bin/activate && pytest

run:
	source .venv/bin/activate && python src/main.py

format:
	source .venv/bin/activate && black .

lint:
	source .venv/bin/activate && flake8 .