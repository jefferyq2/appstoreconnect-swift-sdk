// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.AppCustomProductPageLocalizations.WithID {
	public var relationships: Relationships {
		Relationships(path: path + "/relationships")
	}

	public struct Relationships {
		/// Path: `/v1/appCustomProductPageLocalizations/{id}/relationships`
		public let path: String
	}
}
