FROM python:3.6.8-slim-stretch
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y --no-install-recommends git curl make rsync graphviz pandoc
RUN pip install docutils==0.14 recommonmark==0.4.0 sphinx==1.8.5 sphinx-autobuild sphinx-markdown-tables sphinx-rtd-theme nbsphinx ipykernel
COPY build /bin/build