setup:
	python3 -m venv ../.MLOpsDagsHubDemo
	#source ../.MLOpsDagsHubDemo/bin/activate

install:
	pip install --upgrade pip &&\
	  pip install -r requirements.txt
	#dvc pull -r origin