//
//  MessageViewTests.swift
//  MessageViewTests
//
//  Created by Joseph on 7/12/19.
//  Copyright © 2019 Joseph. All rights reserved.
//

import XCTest
@testable import MessageView

class MessageViewTests: XCTestCase {

    var messageView: MessageView!
    
    override func setUp() {
        super.setUp()
        
        messageView = MessageView()
    }
    
    override func tearDown() {
        super.tearDown()
        
        messageView = nil
    }
    
    //Make test cases here 

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
