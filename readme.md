# Health Services Platform Marketplace Documentation Repository

This repo contains the artifacts used to build the Health Services Platform Marketplace and the Health Services Platform Marketplace Swagger  

docker run -itd --name hspmig201909 --publish 8080:80 hpsmig

To build a Docker image from the Dockerfile, run the following command from inside this directory

docker build -t hpsmig .

This will produce the following output

To run the image in a Docker container, use the following command

docker run -itd --name hspmig201909 --publish 8080:80 hpsmig

This will start serving the static site on port 8080. If you visit `http://localhost:8080` in your browser, you should be able to see our static site!
