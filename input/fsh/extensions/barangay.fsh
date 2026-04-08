Extension: Barangay
Id: barangay
Context: Address
Description: "Barangay from the standard geographic code."

* ^status = #draft

* ^context.type = #element
* ^context.expression = "Address"

* insert ExperimentalStructureDefinition
* value[x] only Coding
* value[x] from barangays (extensible)