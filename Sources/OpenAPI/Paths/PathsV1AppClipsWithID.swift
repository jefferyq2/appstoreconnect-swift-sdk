// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.AppClips {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appClips/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsAppClips: [FieldsAppClips]?
			public var include: [Include]?
			public var fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var limitAppClipDefaultExperiences: Int?

			public enum FieldsAppClips: String, Codable, CaseIterable {
				case app
				case appClipAdvancedExperiences
				case appClipDefaultExperiences
				case bundleID = "bundleId"
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case appClipDefaultExperiences
			}

			public enum FieldsAppClipAdvancedExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case businessCategory
				case defaultLanguage
				case headerImage
				case isPoweredBy
				case link
				case localizations
				case place
				case placeStatus
				case removed
				case status
				case version
			}

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case appClipAppStoreReviewDetail
				case appClipDefaultExperienceLocalizations
				case appClipDefaultExperienceTemplate
				case releaseWithAppStoreVersion
			}

			public init(fieldsAppClips: [FieldsAppClips]? = nil, include: [Include]? = nil, fieldsAppClipAdvancedExperiences: [FieldsAppClipAdvancedExperiences]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, limitAppClipDefaultExperiences: Int? = nil) {
				self.fieldsAppClips = fieldsAppClips
				self.include = include
				self.fieldsAppClipAdvancedExperiences = fieldsAppClipAdvancedExperiences
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.limitAppClipDefaultExperiences = limitAppClipDefaultExperiences
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClips, forKey: "fields[appClips]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsAppClipAdvancedExperiences, forKey: "fields[appClipAdvancedExperiences]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(limitAppClipDefaultExperiences, forKey: "limit[appClipDefaultExperiences]")
				return encoder.items
			}
		}
	}
}
