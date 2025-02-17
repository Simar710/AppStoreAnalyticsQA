//
//  AppStoreAnalyticsQAUITests.swift
//  AppStoreAnalyticsQAUITests
//
//  Created by Simardeep Singh on 2/16/25.
//

import XCTest

final class AppStoreAnalyticsQAUITests: XCTestCase {

    func testAnalyticsListLoad() {
        let app = XCUIApplication()
        app.launch()
        
        // Verify the navigation bar exists.
        let navBar = app.navigationBars["Analytics Dashboard"]
        XCTAssertTrue(navBar.exists)
        
        // Verify that at least one cell appears.
        let firstCell = app.cells.element(boundBy: 0)
        XCTAssertTrue(firstCell.waitForExistence(timeout: 5))
    }
}
