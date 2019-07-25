FROM python:2.7
COPY ./hsp-project /hsp-project/
WORKDIR /hsp-project/
RUN pip install mkdocs
RUN pip install mkdocs-material
CMD ["mkdocs", "gh-deploy"]

FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
ADD hsp-project/site /usr/share/nginx/html/
