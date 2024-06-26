// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Sets the state of the secret scanning alert. Can be either `open` or `resolved`. You must provide `resolution` when you set the state to `resolved`.
public enum SecretScanningAlertState: String, Codable, CaseIterable {
    case `open`
    case resolved
}
