# PH Core Disability Type Value Set - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Disability Type Value Set**

## ValueSet: PH Core Disability Type Value Set (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/ValueSet/ph-core-disability-type-vs | *Version*:0.2.0 |
| Draft as of 2026-06-04 | *Computable Name*:PHCoreDisabilityTypeVS |

 
Value set for types of disability as defined by the Philippine government for PWD registration. 

 **References** 

* [PH Core PWD Disability Registration](StructureDefinition-ph-core-pwd-disability.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "ph-core-disability-type-vs",
  "url" : "http://doh.gov.ph/fhir/ph-core/ValueSet/ph-core-disability-type-vs",
  "version" : "0.2.0",
  "name" : "PHCoreDisabilityTypeVS",
  "title" : "PH Core Disability Type Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-04T09:06:42+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Value set for types of disability as defined by the Philippine government for PWD registration.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/ph-core-disability-type-cs"
    }]
  }
}

```
