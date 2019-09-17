# Health Services Platform (HSP) Marketplace Documentation

This repository contains content and build configuration for the Health Services Platform Marketplace specification as co-developed by Logica Health and HL7, formally balloted by HL7. The computable version of the Marketplace is included in OpenAPI format, and may be edit by Swagger Editor and other tools.

If you plan on editing the computable OpenAPI documents, we recommend using [Swagger Editor](https://swagger.io/tools/swagger-editor/).

## Building

The official official build is distributed as a Docker image. To build your own:

	docker build -t p3000/marketplace-documentation:latest .

To run your image:

	docker run -it --rm --name marketplace-documentation -p 8080:80 p3000/marketplace-documentation:latest

This will start serving the static HTML site at `http://localhost:8080`.


## Building Manually


Install MkDocs

pip install mkdocs

Install Material

pip install mkdocs-material

Run 'mkdocs serve' in project directory

Serving on http://127.0.0.1:8000

