# Makefile for MarketPlace

# variables
PROJECT_NAME = MarketPlace
PYTHON = python
PIP = pip
MANAGE = $(PYTHON) manage.py

# create virtual environment
venv:
	python -m venv venv

# activate virtual environment
activate:
	source venv/bin/activate

# deactivation virtual environment
deactivate:
	deactivate

# create superuser
superuser:
	$(MANAGE) createsuperuser

# run server
runserver:
	$(MANAGE) runserver