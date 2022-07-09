// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.BetaGroups.WithID.Relationships {
	public var betaTesters: BetaTesters {
		BetaTesters(path: path + "/betaTesters")
	}

	public struct BetaTesters {
		/// Path: `/v1/betaGroups/{id}/relationships/betaTesters`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaGroupBetaTestersLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.BetaGroupBetaTestersLinkagesRequest) -> Request<Void> {
			.post(path, body: body)
		}

		public func delete(_ body: AppStoreConnect_Swift_SDK.BetaGroupBetaTestersLinkagesRequest) -> Request<Void> {
			.delete(path, body: body)
		}
	}
}
