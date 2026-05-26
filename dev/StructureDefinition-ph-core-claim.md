# PH Core Claim - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Claim**

## Resource Profile: PH Core Claim 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-claim | *Version*:0.2.0 |
| Draft as of 2026-05-26 | *Computable Name*:PHCoreClaim |

 
Captures information about a request for reimbursement or payment for health care products and services within the Philippine health system, including specific benefit packages such as Animal Bites and TB DOTS programs. 

**Usages:**

* Examples for this Profile: [Claim/claim-single-example](Claim-claim-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-claim)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-claim.csv), [Excel](StructureDefinition-ph-core-claim.xlsx), [Schematron](StructureDefinition-ph-core-claim.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-claim",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-claim",
  "version" : "0.2.0",
  "name" : "PHCoreClaim",
  "title" : "PH Core Claim",
  "status" : "draft",
  "date" : "2026-05-26T03:51:01+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures information about a request for reimbursement or payment for health care products and services within the Philippine health system, including specific benefit packages such as Animal Bites and TB DOTS programs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim"
    },
    {
      "id" : "Claim.patient",
      "path" : "Claim.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient"]
      }]
    },
    {
      "id" : "Claim.insurer",
      "path" : "Claim.insurer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Claim.provider",
      "path" : "Claim.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Claim.payee.party",
      "path" : "Claim.payee.party",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson"]
      }]
    },
    {
      "id" : "Claim.careTeam.provider",
      "path" : "Claim.careTeam.provider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }]
    }]
  }
}

```
