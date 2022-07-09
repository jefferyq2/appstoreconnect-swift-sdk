// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppClipDefaultExperienceLocalizationResponse: Codable {
	/// AppClipDefaultExperienceLocalization
	public var data: AppClipDefaultExperienceLocalization
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable {
		case appClipDefaultExperience(AppClipDefaultExperience)
		case appClipHeaderImage(AppClipHeaderImage)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(AppClipDefaultExperience.self) {
				self = .appClipDefaultExperience(value)
			} else if let value = try? container.decode(AppClipHeaderImage.self) {
				self = .appClipHeaderImage(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .appClipDefaultExperience(let value): try container.encode(value)
			case .appClipHeaderImage(let value): try container.encode(value)
			}
		}
	}

	public init(data: AppClipDefaultExperienceLocalization, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
