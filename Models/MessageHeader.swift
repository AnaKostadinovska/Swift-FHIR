//
//  MessageHeader.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-04.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Foundation


/**
 *  A resource that describes a message that is exchanged between systems.
 *
 *  Scope and Usage The MessageHeader resource is defined in order to support Messaging using FHIR resources. The
 *  principle usage of the MessageHeader resource is when messages are exchanged. However, as a resource that can
 *  be used with the RESTful framework, the MessageHeader resource has the normal resource end-point ([base-
 *  url]/Message), which is used to manage a set of static messages resources. This could be used to make an
 *  archive of past messages available. Creating or updating Message resources in this fashion does not represent
 *  the actual occurrence of any event, nor can it trigger any logic associated with the actual event. It is just
 *  for managing a set of message resources.
 */
public class MessageHeader: FHIRResource
{
	override public class var resourceName: String {
		get { return "MessageHeader" }
	}
	
	/** Text summary of the resource, for human interpretation */
	public var text: Narrative?
	
	/** Id of this message */
	public var identifier: String?
	
	/** Time that the message was sent */
	public var timestamp: Int?
	
	/** Code for the event this message represents */
	public var event: Coding?
	
	/** If this is a reply to prior message */
	public var response: MessageHeaderResponse?
	
	/** Message Source Application */
	public var source: MessageHeaderSource?
	
	/** Message Destination Application(s) */
	public var destination: [MessageHeaderDestination]?
	
	/** The source of the data entry */
	public var enterer: FHIRElement? {
		get { return resolveReference("enterer") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "enterer")
			}
		}
	}
	
	/** The source of the decision */
	public var author: FHIRElement? {
		get { return resolveReference("author") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "author")
			}
		}
	}
	
	/** Intended "real-world" recipient for the data */
	public var receiver: FHIRElement? {
		get { return resolveReference("receiver") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "receiver")
			}
		}
	}
	
	/** Final responsibility for event */
	public var responsible: FHIRElement? {
		get { return resolveReference("responsible") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "responsible")
			}
		}
	}
	
	/** Cause of event */
	public var reason: CodeableConcept?
	
	/** The actual content of the message */
	public var data: [FHIRElement]? {
		get { return resolveReferences("data") }
		set {
			if nil != newValue {
				didSetReferences(newValue!, name: "data")
			}
		}
	}
	
	public convenience init(identifier: String?, timestamp: Int?, event: Coding?, source: MessageHeaderSource?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != timestamp {
			self.timestamp = timestamp
		}
		if nil != event {
			self.event = event
		}
		if nil != source {
			self.source = source
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? NSDictionary {
				self.text = Narrative(json: val)
			}
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["timestamp"] as? Int {
				self.timestamp = val
			}
			if let val = js["event"] as? NSDictionary {
				self.event = Coding(json: val)
			}
			if let val = js["response"] as? NSDictionary {
				self.response = MessageHeaderResponse(json: val)
			}
			if let val = js["source"] as? NSDictionary {
				self.source = MessageHeaderSource(json: val)
			}
			if let val = js["destination"] as? [NSDictionary] {
				self.destination = MessageHeaderDestination.from(val) as? [MessageHeaderDestination]
			}
			if let val = js["enterer"] as? NSDictionary {
				self.enterer = ResourceReference(json: val)
			}
			if let val = js["author"] as? NSDictionary {
				self.author = ResourceReference(json: val)
			}
			if let val = js["receiver"] as? NSDictionary {
				self.receiver = ResourceReference(json: val)
			}
			if let val = js["responsible"] as? NSDictionary {
				self.responsible = ResourceReference(json: val)
			}
			if let val = js["reason"] as? NSDictionary {
				self.reason = CodeableConcept(json: val)
			}
			if let val = js["data"] as? [NSDictionary] {
				self.data = ResourceReference.from(val) as? [ResourceReference]
			}
		}
	}
}


/**
 *  If this is a reply to prior message.
 *
 *  Information about the message that this message is a response to.  Only present if this message is a response.
 */
public class MessageHeaderResponse: FHIRElement
{	
	/** Id of original message */
	public var identifier: String?
	
	/** ok | transient-error | fatal-error */
	public var code: String?
	
	/** Specific list of hints/warnings/errors */
	public var details: FHIRElement? {
		get { return resolveReference("details") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "details")
			}
		}
	}
	
	public convenience init(identifier: String?, code: String?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != code {
			self.code = code
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? String {
				self.identifier = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["details"] as? NSDictionary {
				self.details = ResourceReference(json: val)
			}
		}
	}
}


/**
 *  Message Source Application.
 *
 *  The source application from which this message originated.
 */
public class MessageHeaderSource: FHIRElement
{	
	/** Name of system */
	public var name: String?
	
	/** Name of software running the system */
	public var software: String?
	
	/** Version of software running */
	public var version: String?
	
	/** Human contact for problems */
	public var contact: Contact?
	
	/** Actual message source address or id */
	public var endpoint: NSURL?
	
	public convenience init(software: String?, endpoint: NSURL?) {
		self.init(json: nil)
		if nil != software {
			self.software = software
		}
		if nil != endpoint {
			self.endpoint = endpoint
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["software"] as? String {
				self.software = val
			}
			if let val = js["version"] as? String {
				self.version = val
			}
			if let val = js["contact"] as? NSDictionary {
				self.contact = Contact(json: val)
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
			}
		}
	}
}


/**
 *  Message Destination Application(s).
 *
 *  The destination application which the message is intended for.
 */
public class MessageHeaderDestination: FHIRElement
{	
	/** Name of system */
	public var name: String?
	
	/** Particular delivery destination within the destination */
	public var target: FHIRElement? {
		get { return resolveReference("target") }
		set {
			if nil != newValue {
				didSetReference(newValue!, name: "target")
			}
		}
	}
	
	/** Actual destination address or id */
	public var endpoint: NSURL?
	
	public convenience init(endpoint: NSURL?) {
		self.init(json: nil)
		if nil != endpoint {
			self.endpoint = endpoint
		}
	}	
	
	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["target"] as? NSDictionary {
				self.target = ResourceReference(json: val)
			}
			if let val = js["endpoint"] as? String {
				self.endpoint = NSURL(json: val)
			}
		}
	}
}

