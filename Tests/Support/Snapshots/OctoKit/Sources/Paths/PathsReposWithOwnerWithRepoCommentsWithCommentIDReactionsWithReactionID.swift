// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Comments.WithCommentID.Reactions {
    public func reactionID(_ reactionID: Int) -> WithReactionID {
        WithReactionID(path: "\(path)/\(reactionID)")
    }

    public struct WithReactionID {
        /// Path: `/repos/{owner}/{repo}/comments/{comment_id}/reactions/{reaction_id}`
        public let path: String

        /// Delete a commit comment reaction
        ///
        /// **Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/comments/:comment_id/reactions/:reaction_id`.
        /// 
        /// Delete a reaction to a [commit comment](https://docs.github.com/rest/reference/repos#comments).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/reactions#delete-a-commit-comment-reaction)
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "reactions/delete-for-commit-comment")
        }
    }
}
