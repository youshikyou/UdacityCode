[![CircleCI](https://circleci.com/gh/mogueye87/operationalize-ml-microservice-api.svg?style=svg&circle-token=465118084c2dcc6a6430059fa8128659d38c9679)](https://app.circleci.com/jobs/github/mogueye87/operationalize-ml-microservice-api/12)

# Udacity Cloud Devops Nanodegree
# Project 4: Operationalize a machine learning microservice API
**Author:<a> Mouhamadou GUEYE</a>**

**Date: January 17, 2020**
## Table of contents

<ul>
<li><a href="#intro">Project Overview</a></li>
<li><a href="#server">Install Docker on Ubuntu </a></li>
<li><a href="#requirement">Setup the Environment</a></li>
<li><a href="#projects">references</a></li>
</ul>

<a id="intro"></a>
## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---
## Setup the Environment
* Spining up an ubuntu cloud server and install Docker
- Installing and testing Docker (remember to log out and back in for group changes to take effect):
```sh
sudo apt install -y docker.io
sudo usermod -aG docker cloud_user
docker run hello-world
```
- Get and install Minikube:
```sh
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_1.4.0.deb
sudo dpkg -i minikube_1.4.0.deb
```
- Configure and start Minikube:
```sh
sudo minikube config set vm-driver none
sudo minikube start
```
* Download ans Install Python 3.7 from source
> Download and Install Python 3 from Source
> https://www.python.org/downloads/
- Here are the commands that we'll run to build and install Python 3:
```sh
$ sudo -i
$ apt update -y
$ apt install -y \
  wget \
  build-essential \
  libffi-dev \
  libgdbm-dev \
  libc6-dev \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  libncurses5-dev \
  libncursesw5-dev \
  xz-utils \
  tk-dev

$ cd /usr/src
$ wget http://python.org/ftp/python/3.7.2/Python-3.7.2.tar.xz
$ tar xf Python-3.7.2.tar.xz
$ cd Python-3.7.2
$ ./configure --enable-optimizations
$ make altinstall
```

- Additional configurations and installation of kubectl:
```sh
sudo chown -R $USER $HOME/.kube $HOME/.minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
```

* Create a virtualenv and activate 
```sh
$ python3 -m venv ~/.devops
$ source ~/.devops/bin/activate
$ make install
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Making predictions: `./make_prediction.sh`
4. Push Docker Images: `./upload_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## References
1. Minikube in the Cloud on Ubuntu  (linuxacamademy.com)
2. Python for DevOps: Learn Ruthlessly Effective Automation, By Noah Gift, Kennedy Behrman, Alfredo Deza, Grig Gheorghiu
3. https://circleci.com/docs/2.0/status-badges/

