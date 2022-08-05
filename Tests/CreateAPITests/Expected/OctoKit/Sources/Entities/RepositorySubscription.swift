// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Repository Invitation
///
/// Repository invitations let you manage who you collaborate with.
public struct RepositorySubscription: Codable {
    /// Determines if notifications should be received from this repository.
    ///
    /// Example: true
    public var isSubscribed: Bool
    /// Determines if all notifications should be blocked from this repository.
    public var isIgnored: Bool
    public var reason: String?
    /// Example: "2012-10-06T21:34:12Z"
    public var createdAt: Date
    /// Example: "https://api.github.com/repos/octocat/example/subscription"
    public var url: URL
    /// Example: "https://api.github.com/repos/octocat/example"
    public var repositoryURL: URL

    public init(isSubscribed: Bool, isIgnored: Bool, reason: String? = nil, createdAt: Date, url: URL, repositoryURL: URL) {
        self.isSubscribed = isSubscribed
        self.isIgnored = isIgnored
        self.reason = reason
        self.createdAt = createdAt
        self.url = url
        self.repositoryURL = repositoryURL
    }

    private enum CodingKeys: String, CodingKey {
        case isSubscribed = "subscribed"
        case isIgnored = "ignored"
        case reason
        case createdAt = "created_at"
        case url
        case repositoryURL = "repository_url"
    }
}