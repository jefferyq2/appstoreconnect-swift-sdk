// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct UserVisibleAppsLinkagesRequest: Codable {
	public var data: [Datum]

	public struct Datum: Codable, Identifiable {
		public var type: `Type`
		public var id: String

		public enum `Type`: String, Codable, CaseIterable {
			case apps
		}

		public init(type: `Type`, id: String) {
			self.type = type
			self.id = id
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.id = try values.decode(String.self, forKey: "id")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(id, forKey: "id")
		}
	}

	public init(data: [Datum]) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([Datum].self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
