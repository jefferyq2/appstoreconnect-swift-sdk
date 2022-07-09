// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.BetaAppClipInvocations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/betaAppClipInvocations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaAppClipInvocationResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]?
			public var include: [Include]?
			public var limitBetaAppClipInvocationLocalizations: Int?

			public enum FieldsBetaAppClipInvocations: String, Codable, CaseIterable {
				case betaAppClipInvocationLocalizations
				case buildBundle
				case url
			}

			public enum Include: String, Codable, CaseIterable {
				case betaAppClipInvocationLocalizations
			}

			public init(fieldsBetaAppClipInvocations: [FieldsBetaAppClipInvocations]? = nil, include: [Include]? = nil, limitBetaAppClipInvocationLocalizations: Int? = nil) {
				self.fieldsBetaAppClipInvocations = fieldsBetaAppClipInvocations
				self.include = include
				self.limitBetaAppClipInvocationLocalizations = limitBetaAppClipInvocationLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsBetaAppClipInvocations, forKey: "fields[betaAppClipInvocations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitBetaAppClipInvocationLocalizations, forKey: "limit[betaAppClipInvocationLocalizations]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.BetaAppClipInvocationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.BetaAppClipInvocationResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}