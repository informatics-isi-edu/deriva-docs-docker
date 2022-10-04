# deriva-docs-docker
![dockerhub-badge](https://img.shields.io/badge/images%20on-Docker%20Hub-blue.svg)
[![Version](https://img.shields.io/docker/v/isrddev/deriva-docs.svg)](https://hub.docker.com/v/isrddev/deriva-docs/)
[![Docker pulls](https://img.shields.io/docker/pulls/isrddev/deriva-docs.svg)](https://hub.docker.com/r/isrddev/deriva-docs/)
[![Docker automated build](https://img.shields.io/docker/cloud/automated/isrddev/deriva-docs.svg)](https://hub.docker.com/r/isrddev/deriva-docs/)


[dockerhub-link]: https://hub.docker.com/r/coqorg/coq#supported-tags "Supported tags on Docker Hub"

[coqorg-badge]: https://img.shields.io/docker/v/coqorg/coq/latest
[coqorg-link]: https://github.com/coq-community/docker-coq/wiki#docker-coq-images "coqorg/coq:latest"
Docker image used for building the DERIVA platform documentation suite 
from the GitHub repo [`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs).

## Installation

### With Docker Hub

Pull the image from Docker Hub using:

```sh
docker pull isrddev/deriva-docs
```

### From source

Clone this repository build the image using the following command:

```sh
docker build -t isrddev/deriva-docs .
```

## Usage

Run the following command on the docker image to automatically build and 
publish the documentation as the GitHub user `isi-isrd-dev` from the master 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) branch. 

* Note that in the default usage below, the `GITHUB_TOKEN` 
environment variable must be a valid token with read/write scopes for 
the default GitHub user `isi-isrd-dev` and the 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) repo.
* The `-e GITHUB_TOKEN=XXX` may be omitted to only build the docs without 
the subsequent commit/push to GitHub.


```sh
docker run -it -e GITHUB_TOKEN=XXX isrddev/deriva-docs build
```

###### Additional options

Other environment variables can be passed with the `-e` switch to override 
the GitHub account and branch used to pull/commit/push to the 
documentation repository:

* `GITHUB_TAG`: The branch/tag name of the 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) 
repo to use for building.
* `GITHUB_USER`: The GitHub username to authenticate for pull/commit/push 
operations. Note that the `GITHUB_TOKEN` environment variable must be a 
valid access token for the user specified against the 
[`deriva-docs`](https://github.com/informatics-isi-edu/deriva-docs) repo.
* `GITHUB_EMAIL`: The email address to use for `GITHUB_USER`. It is 
_recommended_ that this email address match the registered email address 
for the `GITHUB_USER` or undesired commit behavior may occur.
 