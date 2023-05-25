.PHONY: test install lint

# Target for running tests
#test:
#	python -m unittest discover -s tests -p "*.py"

# Target for installing dependencies
install:
	pip install -r requirements.txt
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64
	chmod +x ./hadolint	
# Target for linting the code
lint:
	flake8 backend.py
	./hadolint Dockerfile
