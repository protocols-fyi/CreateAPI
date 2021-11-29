// The MIT License (MIT)
//
// Copyright (c) 2021 Alexander Grebenyuk (github.com/kean).

import XCTest
import OpenAPIKit30
@testable import CreateAPI

final class GenerateSchemesTests: XCTestCase {
    func testGenerateWithDefaultOptions() {
        // GIVEN
        let spec = spec(named: "petstore")
        let options = GenerateOptions()
        
        // WHEN
        let output = GenerateSchemas(spec: spec, options: options, verbose: false).run()
                
        // THEN
        compare(expected: "petstore-schemes-default", actual: output)
    }
    
    func testGenerateClasses() {
        // GIVEN
        let spec = spec(named: "petstore")
        let options = GenerateOptions()
        options.schemes.isGeneratingStructs = false
        
        // WHEN
        let output = GenerateSchemas(spec: spec, options: options, verbose: false).run()
                
        // THEN
        compare(expected: "petstore-schemes-generate-classes", actual: output)
    }
    
    func testChangeAccessControl() {
        // GIVEN
        let spec = spec(named: "petstore")
        let options = GenerateOptions()
        options.access = nil
        
        // WHEN
        let output = GenerateSchemas(spec: spec, options: options, verbose: false).run()
                
        // THEN
        compare(expected: "petstore-schemes-generate-internal-default", actual: output)
    }
}
