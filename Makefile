.PHONY: test install lint

# Target for running tests
#test:
#	python -m unittest discover -s tests -p "*.py"

# Target for installing dependencies
install:
	pip install -r requirements.txt

# Target for linting the code
lint:
	flake8 backend.py
