//
//  ViperTestProjUITests.swift
//  ViperTestProjUITests
//
//  Created by Игорь on 08.01.2018.
//  Copyright © 2018 igor. All rights reserved.
//

import XCTest

class ViperTestProjUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = true
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSignInSignOut() {
        let app = XCUIApplication()
        
        app.buttons["Sign In"].tap()
        XCTAssertTrue(app.buttons["Sign Out"].exists)
    }
    
    func testSignInSognOut() {
        let app = XCUIApplication()
        
        app.buttons["Sign In"].tap()
        XCTAssertTrue(app.buttons["Sogn Out"].exists)
    }
}
