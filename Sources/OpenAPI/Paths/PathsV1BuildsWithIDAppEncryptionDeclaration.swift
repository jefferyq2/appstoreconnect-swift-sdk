// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get
import URLQueryEncoder

extension APIEndpoint.Builds.WithID {
	public var appEncryptionDeclaration: AppEncryptionDeclaration {
		AppEncryptionDeclaration(path: path + "/appEncryptionDeclaration")
	}

	public struct AppEncryptionDeclaration {
		/// Path: `/v1/builds/{id}/appEncryptionDeclaration`
		public let path: String

		public func get(fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEncryptionDeclarationResponse> {
			.get(path, query: makeGetQuery(fieldsAppEncryptionDeclarations))
		}

		private func makeGetQuery(_ fieldsAppEncryptionDeclarations: [FieldsAppEncryptionDeclarations]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAppEncryptionDeclarations, forKey: "fields[appEncryptionDeclarations]", explode: false)
			return encoder.items
		}

		public enum FieldsAppEncryptionDeclarations: String, Codable, CaseIterable {
			case app
			case appEncryptionDeclarationState
			case availableOnFrenchStore
			case builds
			case codeValue
			case containsProprietaryCryptography
			case containsThirdPartyCryptography
			case documentName
			case documentType
			case documentURL = "documentUrl"
			case exempt
			case platform
			case uploadedDate
			case usesEncryption
		}
	}
}
