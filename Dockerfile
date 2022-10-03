FROM python:3.6.8-slim-stretch
RUN export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install -y --no-install-recommends git curl make rsync graphviz pandoc
RUN python -m pip install --upgrade pip wheel
RUN pip install docutils==0.14 recommonmark==0.4.0 sphinx==1.8.5 sphinx-autobuild==2020.9.1 sphinx-markdown-tables==0.0.15 sphinx-rtd-theme==1.0.0 nbsphinx==0.8.8 ipykernel==5.5.6
COPY build /bin/build