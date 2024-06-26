// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct ContainerC: Codable {
    public var child: Child

    public struct Child: Codable {
        public var `enum`: Enum
        public var renameMe: String

        public enum Enum: String, Codable, CaseIterable {
            case a
            case b
        }

        public init(`enum`: Enum, renameMe: String) {
            self.enum = `enum`
            self.renameMe = renameMe
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.enum = try values.decode(Enum.self, forKey: "enum")
            self.renameMe = try values.decode(String.self, forKey: "rename-me")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(`enum`, forKey: "enum")
            try values.encode(renameMe, forKey: "rename-me")
        }
    }

    public init(child: Child) {
        self.child = child
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.child = try values.decode(Child.self, forKey: "child")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(child, forKey: "child")
    }
}
