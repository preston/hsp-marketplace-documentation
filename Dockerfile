FROM nginx
RUN apt-get update \
    && apt-get install -y --no-install-recommends mkdocs
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN mkdir /project
COPY . /project
WORKDIR /project/hsp-project/
RUN mkdocs build --clean
RUN rm /usr/share/nginx/html && mv /project/hsp-project/site /usr/share/nginx/html
