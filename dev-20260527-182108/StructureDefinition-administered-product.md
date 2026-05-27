# Administered Product - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Administered Product**

## Extension: Administered Product 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/administered-product | *Version*:0.2.0 |
| Draft as of 2026-05-27 | *Computable Name*:AdministeredProduct |

The vaccine product that was administered.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Immunization](StructureDefinition-ph-core-immunization.md)
* Examples for this Extension: [Immunization/immunization-single-example](Immunization-immunization-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/administered-product)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-administered-product.csv), [Excel](StructureDefinition-administered-product.xlsx), [Schematron](StructureDefinition-administered-product.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "administered-product",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/administered-product",
  "version" : "0.2.0",
  "name" : "AdministeredProduct",
  "title" : "Administered Product",
  "status" : "draft",
  "date" : "2026-05-27T18:15:03+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The vaccine product that was administered.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Immunization"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Administered Product",
      "definition" : "The vaccine product that was administered."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/administered-product"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medication"]
      }]
    }]
  }
}

```
