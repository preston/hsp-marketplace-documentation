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

[Marketplace JSON Schema](./packaging/schema/build.json)

## Examples

The below examples _are not real products_. We have included them as guidance for implementors and product developers as a concrete starting point.

[SMART-on-FHIR Product Build Example](./packaging/example/smart.product.build.json)
[Content Product Build Example](./packaging/example/smart.product.build.json)
[CDS-Hooks Product Build Example](./packaging/example/cds-hooks.product.build.json)
