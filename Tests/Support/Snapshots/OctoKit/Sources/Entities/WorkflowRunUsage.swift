// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct WorkflowRunUsage: Codable {
    public var billable: Billable
    public var runDurationMs: Int?

    public struct Billable: Codable {
        public var ubuntu: Ubuntu?
        public var macos: Macos?
        public var windows: Windows?

        public struct Ubuntu: Codable {
            public var totalMs: Int
            public var jobs: Int
            public var jobRuns: [JobRun]?

            public struct JobRun: Codable {
                public var jobID: Int
                public var durationMs: Int

                public init(jobID: Int, durationMs: Int) {
                    self.jobID = jobID
                    self.durationMs = durationMs
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.jobID = try values.decode(Int.self, forKey: "job_id")
                    self.durationMs = try values.decode(Int.self, forKey: "duration_ms")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(jobID, forKey: "job_id")
                    try values.encode(durationMs, forKey: "duration_ms")
                }
            }

            public init(totalMs: Int, jobs: Int, jobRuns: [JobRun]? = nil) {
                self.totalMs = totalMs
                self.jobs = jobs
                self.jobRuns = jobRuns
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalMs = try values.decode(Int.self, forKey: "total_ms")
                self.jobs = try values.decode(Int.self, forKey: "jobs")
                self.jobRuns = try values.decodeIfPresent([JobRun].self, forKey: "job_runs")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(totalMs, forKey: "total_ms")
                try values.encode(jobs, forKey: "jobs")
                try values.encodeIfPresent(jobRuns, forKey: "job_runs")
            }
        }

        public struct Macos: Codable {
            public var totalMs: Int
            public var jobs: Int
            public var jobRuns: [JobRun]?

            public struct JobRun: Codable {
                public var jobID: Int
                public var durationMs: Int

                public init(jobID: Int, durationMs: Int) {
                    self.jobID = jobID
                    self.durationMs = durationMs
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.jobID = try values.decode(Int.self, forKey: "job_id")
                    self.durationMs = try values.decode(Int.self, forKey: "duration_ms")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(jobID, forKey: "job_id")
                    try values.encode(durationMs, forKey: "duration_ms")
                }
            }

            public init(totalMs: Int, jobs: Int, jobRuns: [JobRun]? = nil) {
                self.totalMs = totalMs
                self.jobs = jobs
                self.jobRuns = jobRuns
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalMs = try values.decode(Int.self, forKey: "total_ms")
                self.jobs = try values.decode(Int.self, forKey: "jobs")
                self.jobRuns = try values.decodeIfPresent([JobRun].self, forKey: "job_runs")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(totalMs, forKey: "total_ms")
                try values.encode(jobs, forKey: "jobs")
                try values.encodeIfPresent(jobRuns, forKey: "job_runs")
            }
        }

        public struct Windows: Codable {
            public var totalMs: Int
            public var jobs: Int
            public var jobRuns: [JobRun]?

            public struct JobRun: Codable {
                public var jobID: Int
                public var durationMs: Int

                public init(jobID: Int, durationMs: Int) {
                    self.jobID = jobID
                    self.durationMs = durationMs
                }

                public init(from decoder: Decoder) throws {
                    let values = try decoder.container(keyedBy: StringCodingKey.self)
                    self.jobID = try values.decode(Int.self, forKey: "job_id")
                    self.durationMs = try values.decode(Int.self, forKey: "duration_ms")
                }

                public func encode(to encoder: Encoder) throws {
                    var values = encoder.container(keyedBy: StringCodingKey.self)
                    try values.encode(jobID, forKey: "job_id")
                    try values.encode(durationMs, forKey: "duration_ms")
                }
            }

            public init(totalMs: Int, jobs: Int, jobRuns: [JobRun]? = nil) {
                self.totalMs = totalMs
                self.jobs = jobs
                self.jobRuns = jobRuns
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalMs = try values.decode(Int.self, forKey: "total_ms")
                self.jobs = try values.decode(Int.self, forKey: "jobs")
                self.jobRuns = try values.decodeIfPresent([JobRun].self, forKey: "job_runs")
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(totalMs, forKey: "total_ms")
                try values.encode(jobs, forKey: "jobs")
                try values.encodeIfPresent(jobRuns, forKey: "job_runs")
            }
        }

        public init(ubuntu: Ubuntu? = nil, macos: Macos? = nil, windows: Windows? = nil) {
            self.ubuntu = ubuntu
            self.macos = macos
            self.windows = windows
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.ubuntu = try values.decodeIfPresent(Ubuntu.self, forKey: "UBUNTU")
            self.macos = try values.decodeIfPresent(Macos.self, forKey: "MACOS")
            self.windows = try values.decodeIfPresent(Windows.self, forKey: "WINDOWS")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encodeIfPresent(ubuntu, forKey: "UBUNTU")
            try values.encodeIfPresent(macos, forKey: "MACOS")
            try values.encodeIfPresent(windows, forKey: "WINDOWS")
        }
    }

    public init(billable: Billable, runDurationMs: Int? = nil) {
        self.billable = billable
        self.runDurationMs = runDurationMs
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.billable = try values.decode(Billable.self, forKey: "billable")
        self.runDurationMs = try values.decodeIfPresent(Int.self, forKey: "run_duration_ms")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(billable, forKey: "billable")
        try values.encodeIfPresent(runDurationMs, forKey: "run_duration_ms")
    }
}