// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.MarketplaceListing {
    public var accounts: Accounts {
        Accounts(path: path + "/accounts")
    }

    public struct Accounts {
        /// Path: `/marketplace_listing/accounts`
        public let path: String
    }
}