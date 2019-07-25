FROM python:2.7 as MKDOCSSTAGE
WORKDIR  /hspmdoc/
COPY . /hspmdoc/
RUN pip install mkdocs
RUN pip install mkdocs-material
WORKDIR  /hspmdoc/hsp-project/
RUN mkdocs build
FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY --from=MKDOCSSTAGE /hspmdoc/hsp-project/site /usr/share/nginx/html/
