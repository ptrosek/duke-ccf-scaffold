install:
	pip install --upgrade pip &&\
		pip install -r requierments.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest --cov=hello test_hello.py
	
all: install lint test