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
    
    func testUpdateFrame() {
        
        messageView.content = "Something this much"
        let size = messageView.titleLbl.sizeThatFits(CGSize(width: 268, height: CGFloat.greatestFiniteMagnitude))
        XCTAssertEqual(size.width, messageView.titleLbl.frame.size.width)
        
    }
    
    //Make test cases here

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
