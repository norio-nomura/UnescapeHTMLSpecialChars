//
//  UnescapeHTMLSpecialCharsTests.swift
//  UnescapeHTMLSpecialCharsTests
//
//  Created by sonson on 2017/02/09.
//  Copyright © 2017年 sonson. All rights reserved.
//

import XCTest
@testable import UnescapeHTMLSpecialChars

class UnescapeHTMLSpecialCharsTests: XCTestCase {
    let testCount = 1000
    let testString2 = "hoge&copy;abcdef&#169;aaaa&#xa9;aa"
    let testString = "hoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahoghoge&copy;a&#169;aaaaa&#xa9;aaaaahog"
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        print(testString.escapeHTML())
        print(testString.gtm_stringByUnescapingFromHTML())
    }
    
    func testPerformanceOriginal() {
        self.measure {
            for _ in 0..<self.testCount {
                let _ = self.testString.escapeHTML()
            }
        }
    }
    
    func testPerformanceGoogle() {
        self.measure {
            for _ in 0..<self.testCount {
                let _ = self.testString.gtm_stringByUnescapingFromHTML()
            }
        }
    }
}
