# Product Packaging and Metadata


Every Product submitted to a Marketplace implementation MUST be accompanied by a computable `marketplace.json` metadata file with a minimal core set of common, required elements. Most others fields are optional and highly dependent on the:

 * Technology standard type used by the given product
 * Requirements of the Marketplace operator
 * Regulatory factors and policies of stakeholder locales

This JSON metadata file is distributed alongside Product images to consumers, and is critical for marketplaces needing to:

 * Render concise product labels
 * Summerize policy differences from official operator guidelines
 * Capture software chain of custody, cryptographic signing, provenence and audit trails between and vendor and consumers.
 * Detail licensing and pricing criteria, when applicable
 * Determine if a Product is compatible with a particular runtime platform
 * Provide remediation measures when runtime incompatibilities are known  
 * Automate Product deployments in conjunction with runtime service orchestrators

## JSON Schemas

The top-level metadata schema applies at the _Product Build_ level, since every product is expected to naturally evolve across each Build. The schema is available in [JSON Schema](https://json-schema.org) format with inline documentation that can be viewed manually or by many supported editors.

**[Marketplace JSON Schema](../metadata/schema/build.json)**

## JSON Examples

The below examples _are not real products_. We have included them as guidance for implementors and product developers as a concrete starting point. For local product development and build purposes, the file MUST be named `marketplace.json` and SHOULD be included at the root level of source code projects for compatible IDEs and editors.

Note: While the schema permits flexible element ordering for readability, all cryptographic signatures of a `marketplace.json` document MUST operate on the _canonical JSON_ form. Assure you have rendered to canonical JSON before computing any hashes!

 * [SMART-on-FHIR Product Build Example](../metadata/example/smart.product.build.json)
 * [Content Product Build Example](../metadata/example/smart.product.build.json)
 * [CDS-Hooks Product Build Example](../metadata/example/cds-hooks.product.build.json)

## Product/Build Label Visual Examples

The below examples are for informational purposes only. They illustrate a way in which Marketplace operators may read a `marketplace.json` file and merge in information with known consumer capabilities to provide a clear, objective overview of the Product and Build.

### Exemplar Product Label Concept
![example-product-label](images/example-product-label-v13.png)

### Exemplar Build Label Concept
![example-build-label](images/example-build-label-v13.png)
