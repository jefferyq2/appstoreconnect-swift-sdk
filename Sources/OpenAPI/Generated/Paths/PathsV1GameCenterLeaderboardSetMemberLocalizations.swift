// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterLeaderboardSetMemberLocalizations: GameCenterLeaderboardSetMemberLocalizations {
		GameCenterLeaderboardSetMemberLocalizations(path: path + "/gameCenterLeaderboardSetMemberLocalizations")
	}

	public struct GameCenterLeaderboardSetMemberLocalizations {
		/// Path: `/v1/gameCenterLeaderboardSetMemberLocalizations`
		public let path: String

		public func get(parameters: GetParameters) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetMemberLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters.asQuery, id: "gameCenterLeaderboardSetMemberLocalizations-get_collection")
		}

		public struct GetParameters {
			public var filterGameCenterLeaderboard: [String]
			public var filterGameCenterLeaderboardSet: [String]
			public var fieldsGameCenterLeaderboardSetMemberLocalizations: [FieldsGameCenterLeaderboardSetMemberLocalizations]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?

			public enum FieldsGameCenterLeaderboardSetMemberLocalizations: String, Codable, CaseIterable {
				case gameCenterLeaderboard
				case gameCenterLeaderboardSet
				case locale
				case name
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboard
				case gameCenterLeaderboardSet
			}

			public enum FieldsGameCenterLeaderboardSets: String, Codable, CaseIterable {
				case gameCenterDetail
				case gameCenterGroup
				case gameCenterLeaderboards
				case groupLeaderboardSet
				case localizations
				case referenceName
				case releases
				case vendorIdentifier
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case archived
				case defaultFormatter
				case gameCenterDetail
				case gameCenterGroup
				case gameCenterLeaderboardSets
				case groupLeaderboard
				case localizations
				case recurrenceDuration
				case recurrenceRule
				case recurrenceStartDate
				case referenceName
				case releases
				case scoreRangeEnd
				case scoreRangeStart
				case scoreSortType
				case submissionType
				case vendorIdentifier
			}

			public init(filterGameCenterLeaderboard: [String], filterGameCenterLeaderboardSet: [String], fieldsGameCenterLeaderboardSetMemberLocalizations: [FieldsGameCenterLeaderboardSetMemberLocalizations]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil) {
				self.filterGameCenterLeaderboard = filterGameCenterLeaderboard
				self.filterGameCenterLeaderboardSet = filterGameCenterLeaderboardSet
				self.fieldsGameCenterLeaderboardSetMemberLocalizations = fieldsGameCenterLeaderboardSetMemberLocalizations
				self.limit = limit
				self.include = include
				self.fieldsGameCenterLeaderboardSets = fieldsGameCenterLeaderboardSets
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterGameCenterLeaderboard, forKey: "filter[gameCenterLeaderboard]")
				encoder.encode(filterGameCenterLeaderboardSet, forKey: "filter[gameCenterLeaderboardSet]")
				encoder.encode(fieldsGameCenterLeaderboardSetMemberLocalizations, forKey: "fields[gameCenterLeaderboardSetMemberLocalizations]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetMemberLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetMemberLocalizationResponse> {
			Request(path: path, method: "POST", body: body, id: "gameCenterLeaderboardSetMemberLocalizations-create_instance")
		}
	}
}