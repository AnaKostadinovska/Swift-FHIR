//
//  ValueSetTests.swift
//  ValueSetTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ValueSetTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ValueSet {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ValueSet {
		let instance = ValueSet(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testValueSet1() {
		let instance = testValueSet1_impl()
		testValueSet1_impl(json: instance.asJSON())
	}
	
	func testValueSet1_impl(json: JSONDictionary? = nil) -> ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "valueset-example.canonical.json")
		
		XCTAssertEqual(inst.compose!.include![0].concept![0].code!, "14647-2")
		XCTAssertEqual(inst.compose!.include![0].concept![1].code!, "2093-3")
		XCTAssertEqual(inst.compose!.include![0].concept![2].code!, "35200-5")
		XCTAssertEqual(inst.compose!.include![0].concept![3].code!, "9342-7")
		XCTAssertEqual(inst.compose!.include![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.compose!.include![0].version!, "2.36")
		XCTAssertEqual(inst.copyright!, "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use")
		XCTAssertEqual(inst.date!.description, "2012-06-13")
		XCTAssertEqual(inst.description_fhir!, "This is an example value set that includes        all the LOINC codes for serum cholesterol from v2.36")
		XCTAssertTrue(inst.experimental!)
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.identifier!.absoluteString!, "urn:uuid:256a5231-a2bb-49bd-9fea-f349d428b70d")
		XCTAssertEqual(inst.name!, "LOINC Codes for Cholesterol")
		XCTAssertEqual(inst.publisher!, "FHIR project team (example)")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.version!, "20120613")
		
		return inst
	}
	
	func testValueSet2() {
		let instance = testValueSet2_impl()
		testValueSet2_impl(json: instance.asJSON())
	}
	
	func testValueSet2_impl(json: JSONDictionary? = nil) -> ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "valueset-example.canonical.json")
		
		XCTAssertEqual(inst.compose!.include![0].concept![0].code!, "14647-2")
		XCTAssertEqual(inst.compose!.include![0].concept![1].code!, "2093-3")
		XCTAssertEqual(inst.compose!.include![0].concept![2].code!, "35200-5")
		XCTAssertEqual(inst.compose!.include![0].concept![3].code!, "9342-7")
		XCTAssertEqual(inst.compose!.include![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.compose!.include![0].version!, "2.36")
		XCTAssertEqual(inst.copyright!, "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use")
		XCTAssertEqual(inst.date!.description, "2012-06-13")
		XCTAssertEqual(inst.description_fhir!, "This is an example value set that includes        all the LOINC codes for serum cholesterol from v2.36")
		XCTAssertTrue(inst.experimental!)
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.identifier!.absoluteString!, "urn:uuid:256a5231-a2bb-49bd-9fea-f349d428b70d")
		XCTAssertEqual(inst.name!, "LOINC Codes for Cholesterol")
		XCTAssertEqual(inst.publisher!, "FHIR project team (example)")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.version!, "20120613")
		
		return inst
	}
	
	func testValueSet3() {
		let instance = testValueSet3_impl()
		testValueSet3_impl(json: instance.asJSON())
	}
	
	func testValueSet3_impl(json: JSONDictionary? = nil) -> ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "valueset-example.json")
		
		XCTAssertEqual(inst.compose!.include![0].concept![0].code!, "14647-2")
		XCTAssertEqual(inst.compose!.include![0].concept![1].code!, "2093-3")
		XCTAssertEqual(inst.compose!.include![0].concept![2].code!, "35200-5")
		XCTAssertEqual(inst.compose!.include![0].concept![3].code!, "9342-7")
		XCTAssertEqual(inst.compose!.include![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.compose!.include![0].version!, "2.36")
		XCTAssertEqual(inst.copyright!, "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use")
		XCTAssertEqual(inst.date!.description, "2012-06-13")
		XCTAssertEqual(inst.description_fhir!, "This is an example value set that includes        all the LOINC codes for serum cholesterol from v2.36")
		XCTAssertTrue(inst.experimental!)
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.identifier!.absoluteString!, "urn:uuid:256a5231-a2bb-49bd-9fea-f349d428b70d")
		XCTAssertEqual(inst.name!, "LOINC Codes for Cholesterol")
		XCTAssertEqual(inst.publisher!, "FHIR project team (example)")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.version!, "20120613")
		
		return inst
	}
	
	func testValueSet4() {
		let instance = testValueSet4_impl()
		testValueSet4_impl(json: instance.asJSON())
	}
	
	func testValueSet4_impl(json: JSONDictionary? = nil) -> ValueSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "valueset-list-example-codes.json")
		
		XCTAssertEqual(inst.define!.concept![0].code!, "alerts")
		XCTAssertEqual(inst.define!.concept![0].definition!, "A list of alerts for the patient")
		XCTAssertEqual(inst.define!.concept![0].display!, "Alerts")
		XCTAssertEqual(inst.define!.concept![1].code!, "adverserxns")
		XCTAssertEqual(inst.define!.concept![1].definition!, "A list of part adverse reactions")
		XCTAssertEqual(inst.define!.concept![1].display!, "Adverse Reactions")
		XCTAssertEqual(inst.define!.concept![2].code!, "allergies")
		XCTAssertEqual(inst.define!.concept![2].definition!, "A list of Allergies for the patient")
		XCTAssertEqual(inst.define!.concept![2].display!, "Allergies")
		XCTAssertEqual(inst.define!.concept![3].code!, "medications")
		XCTAssertEqual(inst.define!.concept![3].definition!, "A list of medication statements for the patient")
		XCTAssertEqual(inst.define!.concept![3].display!, "Medication List")
		XCTAssertEqual(inst.define!.concept![4].code!, "problems")
		XCTAssertEqual(inst.define!.concept![4].definition!, "A list of problems that the patient is known of have (or have had in the past)")
		XCTAssertEqual(inst.define!.concept![4].display!, "Problem List")
		XCTAssertEqual(inst.define!.concept![5].code!, "worklist")
		XCTAssertEqual(inst.define!.concept![5].definition!, "A list of items that constitute a set of work to be performed (typically this code would be specialised for more specific uses, such as a ward round list)")
		XCTAssertEqual(inst.define!.concept![5].display!, "Worklist")
		XCTAssertEqual(inst.define!.concept![6].code!, "waiting")
		XCTAssertEqual(inst.define!.concept![6].definition!, "A list of items waiting for an event (perhaps a surgical patient waiting list)")
		XCTAssertEqual(inst.define!.concept![6].display!, "Waiting List")
		XCTAssertEqual(inst.define!.concept![7].code!, "protocols")
		XCTAssertEqual(inst.define!.concept![7].definition!, "A set of protocols to be followed")
		XCTAssertEqual(inst.define!.concept![7].display!, "Protocols")
		XCTAssertEqual(inst.define!.concept![8].code!, "plans")
		XCTAssertEqual(inst.define!.concept![8].definition!, "A set of care plans that apply in a particular context of care")
		XCTAssertEqual(inst.define!.concept![8].display!, "Care Plans")
		XCTAssertEqual(inst.define!.system!.absoluteString!, "http://hl7.org/fhir/list-example-use-codes")
		XCTAssertEqual(inst.description_fhir!, "Example use codes for the List resource - typical kinds of use. TODO: Does LOINC define useful codes?")
		XCTAssertEqual(inst.id!, "valueset-list-example-codes")
		XCTAssertEqual(inst.identifier!.absoluteString!, "http://hl7.org/fhir/vs/list-example-codes")
		XCTAssertEqual(inst.name!, "Example Use Codes for List")
		XCTAssertEqual(inst.publisher!, "FHIR Project")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		
		return inst
	}
}
