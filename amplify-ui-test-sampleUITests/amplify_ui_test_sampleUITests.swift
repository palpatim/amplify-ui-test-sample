//
//  amplify_ui_test_sampleUITests.swift
//  amplify-ui-test-sampleUITests
//
//  Created by Schmelter, Tim on 9/9/20.
//  Copyright © 2020 Amazon Web Services. All rights reserved.
//

import XCTest

class amplify_ui_test_sampleUITests: XCTestCase {

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

        let startingLabel = app.staticTexts["(not started)"]
        XCTAssert(startingLabel.waitForExistence(timeout: 5))

        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["fetchSessionButton"]/*[[".buttons[\"Fetch session\"]",".buttons[\"fetchSessionButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        let endingLabel = app.staticTexts["Signed out"]
        XCTAssert(endingLabel.waitForExistence(timeout: 5))
    }

}
