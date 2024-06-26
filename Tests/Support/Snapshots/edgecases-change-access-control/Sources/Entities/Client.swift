// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

struct Client: Codable {
    var client: String?

    init(client: String? = nil) {
        self.client = client
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.client = try values.decodeIfPresent(String.self, forKey: "client")
    }

    func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(client, forKey: "client")
    }
}
