// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Users.WithUsername.Events {
    public var `public`: Public {
        Public(path: path + "/public")
    }

    public struct Public {
        /// Path: `/users/{username}/events/public`
        public let path: String

        /// List public events for a user
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/activity#list-public-events-for-a-user)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<[OctoKit.Event]> {
            Request(method: "GET", url: path, query: makeGetQuery(perPage, page), id: "activity/list-public-events-for-user")
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }
    }
}