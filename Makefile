# Makefile
install:
	pip install --upgrade pip &&\
    	pip install -r requirement.txt
format:
	black *.py
lint:
	pylint --disable=R,C script.py
test:
	python3 -m pytest tests/test_*.py
all: install lint test format