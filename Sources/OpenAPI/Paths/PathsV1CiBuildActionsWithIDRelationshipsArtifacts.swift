// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.CiBuildActions.WithID.Relationships {
	public var artifacts: Artifacts {
		Artifacts(path: path + "/artifacts")
	}

	public struct Artifacts {
		/// Path: `/v1/ciBuildActions/{id}/relationships/artifacts`
		public let path: String
	}
}
