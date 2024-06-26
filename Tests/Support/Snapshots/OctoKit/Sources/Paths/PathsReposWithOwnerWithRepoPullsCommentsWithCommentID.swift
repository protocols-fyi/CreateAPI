// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Pulls.Comments {
    public func commentID(_ commentID: Int) -> WithCommentID {
        WithCommentID(path: "\(path)/\(commentID)")
    }

    public struct WithCommentID {
        /// Path: `/repos/{owner}/{repo}/pulls/comments/{comment_id}`
        public let path: String

        /// Get a review comment for a pull request
        ///
        /// Provides details for a review comment.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#get-a-review-comment-for-a-pull-request)
        public var get: Request<OctoKit.PullRequestReviewComment> {
            Request(path: path, method: "GET", id: "pulls/get-review-comment")
        }

        /// Update a review comment for a pull request
        ///
        /// Enables you to edit a review comment.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#update-a-review-comment-for-a-pull-request)
        public func patch(body: String) -> Request<OctoKit.PullRequestReviewComment> {
            Request(path: path, method: "PATCH", body: ["body": body], id: "pulls/update-review-comment")
        }

        /// Delete a review comment for a pull request
        ///
        /// Deletes a review comment.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/pulls#delete-a-review-comment-for-a-pull-request)
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "pulls/delete-review-comment")
        }
    }
}
