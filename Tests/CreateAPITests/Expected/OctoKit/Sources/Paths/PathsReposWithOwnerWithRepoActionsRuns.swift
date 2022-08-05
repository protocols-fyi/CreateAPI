// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions {
    public var runs: Runs {
        Runs(path: path + "/runs")
    }

    public struct Runs {
        /// Path: `/repos/{owner}/{repo}/actions/runs`
        public let path: String

        /// List workflow runs for a repository
        ///
        /// Lists all workflow runs for a repository. You can use parameters to narrow the list of results. For more information about using parameters, see [Parameters](https://docs.github.com/rest/overview/resources-in-the-rest-api#parameters).
        /// 
        /// Anyone with read access to the repository can use this endpoint. If the repository is private you must use an access token with the `repo` scope. GitHub Apps must have the `actions:read` permission to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/actions#list-workflow-runs-for-a-repository)
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "actions/list-workflow-runs-for-repo")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Int
            public var workflowRuns: [OctoKit.WorkflowRun]

            public init(totalCount: Int, workflowRuns: [OctoKit.WorkflowRun]) {
                self.totalCount = totalCount
                self.workflowRuns = workflowRuns
            }

            private enum CodingKeys: String, CodingKey {
                case totalCount = "total_count"
                case workflowRuns = "workflow_runs"
            }
        }

        public enum GetResponseHeaders {
            public static let link = HTTPHeader<String>(field: "Link")
        }

        public struct GetParameters {
            public var actor: String?
            public var branch: String?
            public var event: String?
            public var status: Status?
            public var perPage: Int?
            public var page: Int?
            public var created: Date?
            public var excludePullRequests: Bool?

            public enum Status: String, Codable, CaseIterable {
                case completed
                case actionRequired = "action_required"
                case cancelled
                case failure
                case neutral
                case skipped
                case stale
                case success
                case timedOut = "timed_out"
                case inProgress = "in_progress"
                case queued
                case requested
                case waiting
            }

            public init(actor: String? = nil, branch: String? = nil, event: String? = nil, status: Status? = nil, perPage: Int? = nil, page: Int? = nil, created: Date? = nil, excludePullRequests: Bool? = nil) {
                self.actor = actor
                self.branch = branch
                self.event = event
                self.status = status
                self.perPage = perPage
                self.page = page
                self.created = created
                self.excludePullRequests = excludePullRequests
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(actor, forKey: "actor")
                encoder.encode(branch, forKey: "branch")
                encoder.encode(event, forKey: "event")
                encoder.encode(status, forKey: "status")
                encoder.encode(perPage, forKey: "per_page")
                encoder.encode(page, forKey: "page")
                encoder.encode(created, forKey: "created")
                encoder.encode(excludePullRequests, forKey: "exclude_pull_requests")
                return encoder.items
            }
        }
    }
}