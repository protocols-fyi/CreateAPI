// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct PullRequestMinimal: Codable {
    public var id: Int
    public var number: Int
    public var url: String
    public var head: Head
    public var base: Base

    public struct Head: Codable {
        public var ref: String
        public var sha: String
        public var repo: Repo

        public struct Repo: Codable {
            public var id: Int
            public var url: String
            public var name: String

            public init(id: Int, url: String, name: String) {
                self.id = id
                self.url = url
                self.name = name
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decode(Int.self, forKey: "id")
                self.url = try values.decode(String.self, forKey: "url")
                self.name = try values.decode(String.self, forKey: "name")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(id, forKey: "id")
                try values.encode(url, forKey: "url")
                try values.encode(name, forKey: "name")
            }
        }

        public init(ref: String, sha: String, repo: Repo) {
            self.ref = ref
            self.sha = sha
            self.repo = repo
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.ref = try values.decode(String.self, forKey: "ref")
            self.sha = try values.decode(String.self, forKey: "sha")
            self.repo = try values.decode(Repo.self, forKey: "repo")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(ref, forKey: "ref")
            try values.encode(sha, forKey: "sha")
            try values.encode(repo, forKey: "repo")
        }
    }

    public struct Base: Codable {
        public var ref: String
        public var sha: String
        public var repo: Repo

        public struct Repo: Codable {
            public var id: Int
            public var url: String
            public var name: String

            public init(id: Int, url: String, name: String) {
                self.id = id
                self.url = url
                self.name = name
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.id = try values.decode(Int.self, forKey: "id")
                self.url = try values.decode(String.self, forKey: "url")
                self.name = try values.decode(String.self, forKey: "name")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(id, forKey: "id")
                try values.encode(url, forKey: "url")
                try values.encode(name, forKey: "name")
            }
        }

        public init(ref: String, sha: String, repo: Repo) {
            self.ref = ref
            self.sha = sha
            self.repo = repo
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.ref = try values.decode(String.self, forKey: "ref")
            self.sha = try values.decode(String.self, forKey: "sha")
            self.repo = try values.decode(Repo.self, forKey: "repo")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(ref, forKey: "ref")
            try values.encode(sha, forKey: "sha")
            try values.encode(repo, forKey: "repo")
        }
    }

    public init(id: Int, number: Int, url: String, head: Head, base: Base) {
        self.id = id
        self.number = number
        self.url = url
        self.head = head
        self.base = base
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.number = try values.decode(Int.self, forKey: "number")
        self.url = try values.decode(String.self, forKey: "url")
        self.head = try values.decode(Head.self, forKey: "head")
        self.base = try values.decode(Base.self, forKey: "base")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(number, forKey: "number")
        try values.encode(url, forKey: "url")
        try values.encode(head, forKey: "head")
        try values.encode(base, forKey: "base")
    }
}