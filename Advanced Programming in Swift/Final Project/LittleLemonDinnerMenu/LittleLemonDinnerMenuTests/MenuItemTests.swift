//
//  MenuItemTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by NAbin RAi on 06/04/2023.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class MenuItemTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    func test_menuitem_init_title(){
        let title: String = "Food 1"
        let menuItem = MenuItem(id: UUID(), price: 10.5, title: title, category: .food, orders: 700, Price: 7 , ingredient: [
            .broccoli,
            .spinach
        ])
        
        XCTAssert(menuItem.title == title)
    }

    
    
    func test_menuitem_init_ingredient(){
        let title: String = "Food 2"
        let ingredient: [Ingredient] = [
            .spinach,
            .broccoli
        ]
        let menuItem = MenuItem(id: UUID(), price: 10.5, title: title, category: .food, orders: 700, Price: 7 , ingredient: ingredient)
        XCTAssert(menuItem.title == title)
        XCTAssert(menuItem.ingredient == ingredient)
        
    }

}
