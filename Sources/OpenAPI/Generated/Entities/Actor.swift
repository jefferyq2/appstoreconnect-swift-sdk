// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct Actor: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case actors
	}

	public struct Attributes: Codable {
		public var actorType: ActorType?
		public var userFirstName: String?
		public var userLastName: String?
		public var userEmail: String?
		public var apiKeyID: String?

		public enum ActorType: String, Codable, CaseIterable {
			case user = "USER"
			case apiKey = "API_KEY"
			case xcodeCloud = "XCODE_CLOUD"
			case apple = "APPLE"
		}

		public init(actorType: ActorType? = nil, userFirstName: String? = nil, userLastName: String? = nil, userEmail: String? = nil, apiKeyID: String? = nil) {
			self.actorType = actorType
			self.userFirstName = userFirstName
			self.userLastName = userLastName
			self.userEmail = userEmail
			self.apiKeyID = apiKeyID
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.actorType = try values.decodeIfPresent(ActorType.self, forKey: "actorType")
			self.userFirstName = try values.decodeIfPresent(String.self, forKey: "userFirstName")
			self.userLastName = try values.decodeIfPresent(String.self, forKey: "userLastName")
			self.userEmail = try values.decodeIfPresent(String.self, forKey: "userEmail")
			self.apiKeyID = try values.decodeIfPresent(String.self, forKey: "apiKeyId")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(actorType, forKey: "actorType")
			try values.encodeIfPresent(userFirstName, forKey: "userFirstName")
			try values.encodeIfPresent(userLastName, forKey: "userLastName")
			try values.encodeIfPresent(userEmail, forKey: "userEmail")
			try values.encodeIfPresent(apiKeyID, forKey: "apiKeyId")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encode(links, forKey: "links")
	}
}
