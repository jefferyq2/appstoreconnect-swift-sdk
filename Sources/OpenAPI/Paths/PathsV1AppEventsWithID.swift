// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.AppEvents {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appEvents/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEventResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppEvents: [FieldsAppEvents]?
			public var include: [Include]?
			public var fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?
			public var limitLocalizations: Int?

			public enum FieldsAppEvents: String, Codable, CaseIterable {
				case app
				case archivedTerritorySchedules
				case badge
				case deepLink
				case eventState
				case localizations
				case primaryLocale
				case priority
				case purchaseRequirement
				case purpose
				case referenceName
				case territorySchedules
			}

			public enum Include: String, Codable, CaseIterable {
				case localizations
			}

			public enum FieldsAppEventLocalizations: String, Codable, CaseIterable {
				case appEvent
				case appEventScreenshots
				case appEventVideoClips
				case locale
				case longDescription
				case name
				case shortDescription
			}

			public init(fieldsAppEvents: [FieldsAppEvents]? = nil, include: [Include]? = nil, fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, limitLocalizations: Int? = nil) {
				self.fieldsAppEvents = fieldsAppEvents
				self.include = include
				self.fieldsAppEventLocalizations = fieldsAppEventLocalizations
				self.limitLocalizations = limitLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
				encoder.encode(limitLocalizations, forKey: "limit[localizations]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppEventUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
