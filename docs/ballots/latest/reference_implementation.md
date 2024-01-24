# Reference Implementation

In drafting this specification, several reference implemention projects were created as a means of vetting core use cases and modeling decisions. None of these projects should be considered part of the specification proper, but are useful in evaluation and planning. They are subject to change without notice and are expected to do so from ongoing feedback.

## Marketplace Service
The author(s) maintain a conceptual demonstration of the API, including a basic bi-directional WebSocket mechanism for Agent automation. At time of this writing a demo environment consistent with the original _Automated Injection of Curated Knowledge Into Real-Time Clinical Systems_ dissertation prototypes is available by request from Preston Lee, including a platform-specific model (PSM) for PostgreSQL and ability to resolve real product use authorizations. It implements the same 12-Factor configuration injection and other principles required of all Products.

### Platform-Specific Models (PSMs)

The reference implementation further provides an integrated WebSockets-based pub/sub mechanism at the /websockets endpoint, implemented using the space_elevator library (https://github.com/preston/space_elevator) to receive Platform-instance-specific messages over a stateful Marketplace server connection to demonstrate support for the automated point-and-click deployments envisioned of production environments.
### Platform Integration Agent
While Platform integration is largely outside the scope of this specification -- that is largely a function of a customer's runtime platform -- it is useful to demonstrate how integration with a Marketplace instance may connect with local container orchestration. Limited example code showing connection and consumption of WebSocket events against the reference Marketplace Service.
## Marketplace UI

While the Marketplace API does not define nor assume any GUI capabilities, it is often easier to illustrate the capabilities of the Marketplace’s functional model with a breathing, interactive example.

The reference Marketplace UI is a web application written to the Marketplace API, using modern web technologies and in mainstream development style. It authenticates using OAuth 2 and OpenID Connect in the same manner as SMART-on-FHIR, and visualizes how frontend-only web applications may be easily containerized to meet Build Packaging requirements. Like the reference Marketplace Service, it is also packaged to be distributed by a Marketplace instance.

A demo environment is available at Logica by request.

# Full Example Products
We have assembled a set of example products showcasing how different technology types can be packaged for marketplace publication, deployed to a runtime Platform, and integrated with OpenTelemetry-compatible collectors. Contact them for details.

## SMART-on-FHIR - "Bilirubin" Product

A reimplementation of the bilirubin SMART-on-FHIR application with an updated version for demonstrating `marketplace.json` metadata files and 12factor engineering principles necessary to automate distribution and deployment of such application software.

## CDS Hooks - CDC Opioid Prescribing Guidelines

In 2023, NIH funded the [Substance use HeAlth REcord Sharing](https://www.asushares.com) project to investigate the exchange of sensitive health record information based on patient and provider controls and FHIR standards. This type of drop-in CDS is a prime example of the potential for automated dissemination and operationalization of software in healthcare. [Skycapp](https://www.skycapp.com) has collaboratively produced a distribution demo using the Marketplace standards.

## FHIR Resource Service - TBD

Products exposing FHIR endpoints will be exlicitly supported by the `marketplace.json` schema, and presents unique challenges due to the way CapabilitiesStatement is designed to work. We are actively seeking feedback on the most appropriate means of declaring service API compatibility metadata in a *static* manner that can be evaluated prior to running the Product.

## Metered Static Content

Static content types that require usage metering for licensing, billing, analytics or other purposes can implement access-based metrics by wrapping the content in a simple web server wrapper the logs access against the backend metering API. HL7 and [Skycapp](https://www.skycapp.com) are actively working in this area to operationalize the usage metering mechanisms needed for more complex types of static content such as large data payloads.