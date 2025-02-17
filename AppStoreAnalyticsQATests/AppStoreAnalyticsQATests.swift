//
//  AppStoreAnalyticsQATests.swift
//  AppStoreAnalyticsQATests
//
//  Created by Simardeep Singh on 2/16/25.
//

import XCTest
@testable import AppStoreAnalyticsQA

final class AppStoreAnalyticsQATests: XCTestCase {

    func testAnalyticsDataDecoding() throws {
        let json = """
        [
            {
                "id": "\(UUID().uuidString)",
                "metric": "Downloads",
                "value": 1500
            }
        ]
        """.data(using: .utf8)!
        
        let analytics = try JSONDecoder().decode([AnalyticsData].self, from: json)
        XCTAssertEqual(analytics.count, 1)
        XCTAssertEqual(analytics.first?.metric, "Downloads")
        XCTAssertEqual(analytics.first?.value, 1500)
    }
    
    // Additional tests can be added here.
}
