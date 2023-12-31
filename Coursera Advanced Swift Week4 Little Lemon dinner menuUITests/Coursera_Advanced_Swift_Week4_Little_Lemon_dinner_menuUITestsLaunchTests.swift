//
//  Coursera_Advanced_Swift_Week4_Little_Lemon_dinner_menuUITestsLaunchTests.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menuUITests
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import XCTest

final class Coursera_Advanced_Swift_Week4_Little_Lemon_dinner_menuUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
