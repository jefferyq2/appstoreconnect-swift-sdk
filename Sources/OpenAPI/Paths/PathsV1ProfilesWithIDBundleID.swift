// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.Profiles.WithID {
	public var bundleID: BundleID {
		BundleID(path: path + "/bundleId")
	}

	public struct BundleID {
		/// Path: `/v1/profiles/{id}/bundleId`
		public let path: String

		public func get(fieldsBundleIDs: [FieldsBundleIDs]? = nil) -> Request<AppStoreConnect_Swift_SDK.BundleIDResponse> {
			.get(path, query: makeGetQuery(fieldsBundleIDs))
		}

		private func makeGetQuery(_ fieldsBundleIDs: [FieldsBundleIDs]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBundleIDs, forKey: "fields[bundleIds]", explode: false)
			return encoder.items
		}

		public enum FieldsBundleIDs: String, Codable, CaseIterable {
			case app
			case bundleIDCapabilities = "bundleIdCapabilities"
			case identifier
			case name
			case platform
			case profiles
			case seedID = "seedId"
		}
	}
}
