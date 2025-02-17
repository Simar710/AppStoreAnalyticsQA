//
//  AppStoreAnalyticsQATests.swift
//  AppStoreAnalyticsQATests
//
//
//
//  AppStoreAnalyticsQATests.swift
//  AppStoreAnalyticsQATests
//

import XCTest
@testable import AppStoreAnalyticsQA

class AppStoreAnalyticsQATests: XCTestCase {
    
    func testDecodingAnalyticsData() throws {
        let jsonData = """
        [
          {
            "userId": 1,
            "id": 1,
            "title": "delectus aut autem",
            "completed": false
          },
          {
            "userId": 1,
            "id": 2,
            "title": "quis ut nam facilis et officia qui",
            "completed": false
          }
        ]
        """.data(using: .utf8)!
        
        do {
            let decodedData = try JSONDecoder().decode([AnalyticsData].self, from: jsonData)
            XCTAssertEqual(decodedData.count, 2, "Expected 2 items in the JSON")
            XCTAssertEqual(decodedData[0].id, 1, "First item ID should be 1")
            XCTAssertEqual(decodedData[0].title, "delectus aut autem", "First item title mismatch")
            XCTAssertFalse(decodedData[0].completed, "First item should be incomplete")
        } catch {
            XCTFail("Failed to decode JSON: \(error)")
        }
    }
    
    func testAnalyticsDataInitialization() {
        let data = AnalyticsData(id: 10, title: "Test Task", completed: true)
        
        XCTAssertEqual(data.id, 10, "ID should be 10")
        XCTAssertEqual(data.title, "Test Task", "Title should be 'Test Task'")
        XCTAssertTrue(data.completed, "Completed should be true")
    }
}
