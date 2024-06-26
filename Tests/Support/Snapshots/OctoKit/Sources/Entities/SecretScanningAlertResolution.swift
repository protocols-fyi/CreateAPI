// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// **Required when the `state` is `resolved`.** The reason for resolving the alert. Can be one of `false_positive`, `wont_fix`, `revoked`, or `used_in_tests`.
public enum SecretScanningAlertResolution: String, Codable, CaseIterable {
    case falsePositive = "false_positive"
    case wontFix = "wont_fix"
    case revoked
    case usedInTests = "used_in_tests"
}
