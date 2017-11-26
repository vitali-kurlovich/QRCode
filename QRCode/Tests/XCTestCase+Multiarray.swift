//
//  XCTTestCaseMultiarray.swift
//  QRCode GeneratorTests
//
//  Created by Vitali Kurlovich on 11/13/17.
//  Copyright © 2017 Vitali Kurlovich. All rights reserved.
//

import XCTest

extension XCTestCase {
	func XCTAssertEqualMultiarray( _ r:[[Array<Any>.Element]], _ l:[[Array<Any>.Element]], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
		if (r.count != l.count) {
			XCTAssert(false, "Array have deferent sizes", file: file, line: line);
		}
	}
}
