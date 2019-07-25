FROM python:2.7
WORKDIR  /hspmdoc/
COPY . /hspmdoc/
RUN pip install mkdocs
RUN pip install mkdocs-material
WORKDIR  /hspmdoc/hsp-project/
RUN mkdocs build
FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
ADD /hsp-project/site /usr/share/nginx/html/
