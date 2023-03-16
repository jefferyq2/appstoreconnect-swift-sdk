// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2.SandboxTesters {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v2/sandboxTesters/{id}`
		public let path: String

		public func patch(_ body: AppStoreConnect_Swift_SDK.SandboxTesterV2UpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SandboxTesterV2Response> {
			.patch(path, body: body)
		}
	}
}