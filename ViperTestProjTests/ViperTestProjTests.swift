//
//  ViperTestProjTests.swift
//  ViperTestProjTests
//
//  Created by Игорь on 08.01.2018.
//  Copyright © 2018 igor. All rights reserved.
//

import XCTest
import Nimble
import Quick
//import Cuckoo

@testable import ViperTestProj

class ViperTestProjTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        expect(7).to(equal(7))
   
    }
    
    func testExample722_7() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        expect(722).to(equal(7))
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
//    func testUrl()
//    {
//        let mock = MockCustomUrlSession()
//        let urlStr  = "http://riis.com"
//        let url  = URL(string:urlStr)!
//        stub(mock)
//        { (mock) in
//            when(mock.apiUrl).get.thenReturn(urlStr)
//        }
//        stub(mock)
//        { (mock) in
//            when(mock.url).get.thenReturn(url)
//        }
//        stub(mock)
//        { (mock) in
//            when(mock.session).get.thenReturn(URLSession())
//        }
//        stub(mock) { (stub) in
//            stub.getSourceUrl(apiUrl: urlStr).thenReturn(url)
//        }
//        stub(mock) { mock in
//
//            mock.callApi(url: equal(to:url, equalWhen: { $0 == $1 })).thenReturn("{'firstName': 'John','lastName': 'Smith'}")
//        }
//        XCTAssertNotNil(verify(mock).session)
//        XCTAssertNotNil(verify(mock).apiUrl)
//        XCTAssertNotNil(verify(mock).url)
//        XCTAssertEqual(mock.apiUrl, urlStr)
//        XCTAssertEqual(mock.url?.absoluteString, urlStr)
//        XCTAssertNotNil(mock.session)
//        XCTAssertEqual(mock.callApi(url: url),"{'firstName': 'John','lastName': 'Smith'}")
//
//    }
//
   
    
   
}
