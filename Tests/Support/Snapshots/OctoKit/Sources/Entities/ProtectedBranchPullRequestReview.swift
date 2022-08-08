// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ProtectedBranchPullRequestReview: Codable {
    /// Example: "https://api.github.com/repos/octocat/Hello-World/branches/master/protection/dismissal_restrictions"
    public var url: URL?
    public var dismissalRestrictions: DismissalRestrictions?
    /// Example: true
    public var dismissStaleReviews: Bool
    /// Example: true
    public var requireCodeOwnerReviews: Bool
    public var requiredApprovingReviewCount: Int?

    public struct DismissalRestrictions: Codable {
        /// The list of users with review dismissal access.
        public var users: [SimpleUser]?
        /// The list of teams with review dismissal access.
        public var teams: [Team]?
        /// Example: "https://api.github.com/repos/the-org/an-org-repo/branches/master/protection/dismissal_restrictions"
        public var url: String?
        /// Example: "https://api.github.com/repos/the-org/an-org-repo/branches/master/protection/dismissal_restrictions/users"
        public var usersURL: String?
        /// Example: "https://api.github.com/repos/the-org/an-org-repo/branches/master/protection/dismissal_restrictions/teams"
        public var teamsURL: String?

        public init(users: [SimpleUser]? = nil, teams: [Team]? = nil, url: String? = nil, usersURL: String? = nil, teamsURL: String? = nil) {
            self.users = users
            self.teams = teams
            self.url = url
            self.usersURL = usersURL
            self.teamsURL = teamsURL
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.users = try values.decodeIfPresent([SimpleUser].self, forKey: "users")
            self.teams = try values.decodeIfPresent([Team].self, forKey: "teams")
            self.url = try values.decodeIfPresent(String.self, forKey: "url")
            self.usersURL = try values.decodeIfPresent(String.self, forKey: "users_url")
            self.teamsURL = try values.decodeIfPresent(String.self, forKey: "teams_url")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(users, forKey: "users")
            try values.encodeIfPresent(teams, forKey: "teams")
            try values.encodeIfPresent(url, forKey: "url")
            try values.encodeIfPresent(usersURL, forKey: "users_url")
            try values.encodeIfPresent(teamsURL, forKey: "teams_url")
        }
    }

    public init(url: URL? = nil, dismissalRestrictions: DismissalRestrictions? = nil, dismissStaleReviews: Bool, requireCodeOwnerReviews: Bool, requiredApprovingReviewCount: Int? = nil) {
        self.url = url
        self.dismissalRestrictions = dismissalRestrictions
        self.dismissStaleReviews = dismissStaleReviews
        self.requireCodeOwnerReviews = requireCodeOwnerReviews
        self.requiredApprovingReviewCount = requiredApprovingReviewCount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decodeIfPresent(URL.self, forKey: "url")
        self.dismissalRestrictions = try values.decodeIfPresent(DismissalRestrictions.self, forKey: "dismissal_restrictions")
        self.dismissStaleReviews = try values.decode(Bool.self, forKey: "dismiss_stale_reviews")
        self.requireCodeOwnerReviews = try values.decode(Bool.self, forKey: "require_code_owner_reviews")
        self.requiredApprovingReviewCount = try values.decodeIfPresent(Int.self, forKey: "required_approving_review_count")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(url, forKey: "url")
        try values.encodeIfPresent(dismissalRestrictions, forKey: "dismissal_restrictions")
        try values.encode(dismissStaleReviews, forKey: "dismiss_stale_reviews")
        try values.encode(requireCodeOwnerReviews, forKey: "require_code_owner_reviews")
        try values.encodeIfPresent(requiredApprovingReviewCount, forKey: "required_approving_review_count")
    }
}