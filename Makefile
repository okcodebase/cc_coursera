# https://www.coursera.org/learn/cloud-computing-foundations-duke/lecture/dxL50/constructing-a-python-project-scaffold

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

install_azure:
	pip install --upgrade pip &&\
		pip install -r requirements_azure.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py

test:
	python -m pytest -vv --cov=hello test_hello.py
	
all: install format lint test