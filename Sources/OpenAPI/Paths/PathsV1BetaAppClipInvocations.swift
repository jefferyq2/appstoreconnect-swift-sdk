// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint {
	public static var betaAppClipInvocations: BetaAppClipInvocations {
		BetaAppClipInvocations(path: "/v1/betaAppClipInvocations")
	}

	public struct BetaAppClipInvocations {
		/// Path: `/v1/betaAppClipInvocations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.BetaAppClipInvocationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.BetaAppClipInvocationResponse> {
			.post(path, body: body)
		}
	}
}
