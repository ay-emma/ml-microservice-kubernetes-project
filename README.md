<include a CircleCI status badge, here>

## Project Overview

This project simply operationalize a Machine learning microservice API that pridicts housing prices in Boston. 

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ay-emma/ml-microservice-kubernetes-project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ay-emma/ml-microservice-kubernetes-project/tree/main)

A pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

### Project Tasks

The project goal is to operationalize a machine learning microservice using Docker and  [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. The project does the following:
* Test the flask app code using linting
* Created a Dockerfile to containerize this application
* Deployed the containerized application to DockerHub and made prediction (Docker id => whoisay)
* Improved the log statements in the source code for this application
* Configured Kubernetes and creates a Kubernetes cluster locally (Use aws cloud9 if your system cannot handle the workload).
* Deployed a container using Kubernetes and made predictions
* Integrated CircleCI for CI to indicate that code pass all tests


---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

4. Make predictions `./make_prediction`
5. To upload docker image: `./upload_docker.sh`

### Kubernetes Steps

* Setup and Configure Docker locally 
* Setup and Configure (Kubernetes locally)[https://kubernetes.io/docs/tasks/tools/install-minikube/]
* Create Flask app in Container
* Run via (kubectl)[https://minikube.sigs.k8s.io/docs/handbook/controls/] 
* 


Explanation of file directorys 

| Directory  | Description  |
| ------------- | ------------- |
| Circleci  | Contains config.yml file for circleci continous integration  |
| Model Data  | Shows housing prices in the boston area  |
| Output_files | Shows docker and kubernetes log outputs |
| app.py | REST endpoint in flask containing containing routes to fetch house prices in boston |
| Dockerfile | Docker creation files with dependencies |
| make_predictions.sh | Call to log output predictions from the REST api end point |
| Makefile | to install project dependcies and lint |
| requirements.txt | Python dependencies for the project |
| run_docker | shell script to build the docker file |
| upload_docker | shell script to upload locally built image to docker-hub | 
| run_kuberbetes | shell script to run and start up docker image in kubernetes locally | 

