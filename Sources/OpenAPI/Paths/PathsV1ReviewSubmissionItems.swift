// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint {
	public static var reviewSubmissionItems: ReviewSubmissionItems {
		ReviewSubmissionItems(path: "/v1/reviewSubmissionItems")
	}

	public struct ReviewSubmissionItems {
		/// Path: `/v1/reviewSubmissionItems`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.ReviewSubmissionItemCreateRequest) -> Request<AppStoreConnect_Swift_SDK.ReviewSubmissionItemResponse> {
			.post(path, body: body)
		}
	}
}
