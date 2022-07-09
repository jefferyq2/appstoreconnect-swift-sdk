// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppScreenshotResponse: Codable {
	/// AppScreenshot
	public var data: AppScreenshot
	public var included: [AppScreenshotSet]?
	public var links: DocumentLinks

	public init(data: AppScreenshot, included: [AppScreenshotSet]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
