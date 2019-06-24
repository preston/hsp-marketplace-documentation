#Supplementary Reference Implementation

In drafting this specification, several reference implemention projects were created as a means of vetting core use cases and modeling decisions. None of these projects should be considered part of the specification proper, but are useful in evaluation and planning. All projects discussed in this section have been made available under unencumbered F/OSS license and may be forked with or without explicit permission. They are subject to change without notice and are expected to do so from ongoing feedback.
1.17 Marketplace Service
The conceptual demonstration of the API implementation defined in the API section, including a basic bi-directional WebSocket mechanism for Agent automation, is available under Open Source license, here: https://github.com/preston/hsp-marketplace-server . At time of this writing a demo environment is available by request from HSPC.
The reference implementation provides platform-specific model (PSM) for PostgreSQL illustrated in Figure 7 Reference Marketplace Service Platform-Specific Model, and itself is built to be distributable as a Health Service by an instance of itself. The demo further demonstrates the principle of self-bootstrapping an underlying, external database into the correct state without human intervention, and implements 12-Factor configuration injection and other principles required of all Health Services.


Figure 7 Reference Marketplace Service Platform-Specific Model

The reference implementation further provides an integrated WebSockets-based pub/sub mechanism at the /websockets endpoint, implemented using the space_elevator library (https://github.com/preston/space_elevator) to receive Platform-instance-specific messages over a stateful Marketplace server connection. This demonstrates support for the automated point-and-click deployments ultimately envisioned.
1.18 Marketplace UI
While the Marketplace API does not define or assume any GUI capabilities, it is often easier to illustrate the capabilities of the Marketplace’s functional model with a breathing, interactive example.
The reference Marketplace UI is a web application written to the Marketplace API, using modern web technologies and in mainstream development style. It authenticates using OAuth 2 and OpenID Connect in the same manner as SMART-on-FHIR, and shows how frontend-only web applications may be easily containerized to meet Build Packaging requirements. Like the reference Marketplace Service, it is also packaged to be distributed by a Marketplace instance. Source code is available, here:
https://github.com/hspc/hsp-marketplace-server
https://github.com/hspc/hsp-marketplace-ui
A demo environment is available at HSPC by request.
1.19 Platform Agent
Health Platform Agents are largely outside the scope of this specification, but demonstration of how integration with a Marketplace instance connects with local container management is nevertheless useful. Limited example code showing connection and consumption of WebSocket events against the reference Marketplace Service is available at: https://github.com/hspc/hsp-agent.

#Appendix A: Model Quick Reference

The following table provides a quick overview of all types supported by the Marketplace specification.

Type
Brief Description
IdentityProvider
Marketplace instance-level configuration parameters allowing user authentication against an external authority using OpenID Connect authentication flows.
User
A distinct person or system with some degree of access or interest to a Marketplace instance.
(User) Identity
IdentityProvider-specific information pertaining to a given User.
(User) Platform
Declaration of a compatible external Service runtime environment maintained by the User.
Group
A named collection of Users for purposes of batch Role assignment.
(Group) Member
Essentially a “join” record signifying a given User’s placement within a Group.
Role
A named set of permissions.
(Role) Appointment
The granting of a single Role to a single User or Group. (It is a polymorphic type.)
JsonWebToken
An RFC 7519 JSON Web Token issued to permit access by a given Identity to a Marketplace instance as a bearer token.
License
A known software or content license type, required to create Service records.
Service
Declaration of a Platform-compatible executable in the form of key metadata. Does not directly provide a reference to an executable image.
(Service) Screenshot
Optional graphical images for illustrating Service features to Users.
(Service) Build
Defines the reference to a specific versioned image of a given Service. Images must be hosted such that the Marketplace and its Users have read-only network access, at minimum.
(Service Build) Dependency
Known dependencies that are needed to run a given Build of a service. 
(Service Build) Exposure
The standardized Interfaces capabilities provided by a given Service Build.
(Service Build Exposure) Parameter 
States that configuration parameter of the given name is required at runtime to successfully provide the Interface of the Exposure.
(Service Build) Configuration
The runtime constraints of a Build that need to be known by a Platform for execution.
(Service Build Configuration) Task
A container entry point and associated constraints that must be run as part of a Configuration profile.
Interface
Marketplace-wide declaration of a standardized – or at least conventionalized – computational integration point. They are not constraints to HL7 standards.
(Interface) Surrogate
Marketplace-wide statement that the referenced substitute Interface provides compatible capabilities of the given base Interface. Useful for defining new versions of an Interface that are backwards compatible with older versions.




#Appendix B: Referenced Standards

Standard/Convention
See
Purpose
IETF SCIM 2
https://tools.ietf.org/html/rfc7644
User/Group provisioning
ISO 8601
https://www.iso.org/iso-8601-date-and-time-format.html
Date, time, and time zone standardization
OpenTracing
https://opentracing.io
SOA profiling and tracability
Open Container Initiative
https://www.opencontainers.org
Build containerization
OAuth 2
https://oauth.net/2/
Authorization
OpenID Connect
https://openid.net/connect/
Authentication
FHIR
http://www.fhir.org
Health services and data
SMART-on-FHIR
https://smarthealthit.org
http://hl7.org/fhir/smart-app-launch/
Decoupled UIs
CDS Hooks
https://cds-hooks.org
Remote support services
HL7 CCOW
http://www.hl7.org/implement/standards/product_brief.cfm?product_id=1
User context synchronization


