//
//  QRMathTest.swift
//  QRCode GeneratorTests
//
//  Created by Vitali Kurlovich on 11/11/17.
//  Copyright © 2017 Vitali Kurlovich. All rights reserved.
//

import XCTest

@testable import QRCodeGenerator

class QRMathTest: XCTestCase {
	
	func testQRMath() {
		XCTAssertEqual( QRMath.gexp(3), 8)
		XCTAssertEqual( QRMath.gexp(87), 127)
		XCTAssertEqual( QRMath.gexp(245), 233)
		
		XCTAssertThrowsError(try QRMath.glog(0))
		
		XCTAssertEqual( try QRMath.glog(1), 0)
		XCTAssertEqual( try QRMath.glog(2), 1)
		XCTAssertEqual( try QRMath.glog(3), 25)
		XCTAssertEqual( try QRMath.glog(12), 27)
		XCTAssertEqual( try QRMath.glog(88), 241)
		XCTAssertEqual( try QRMath.glog(245), 231)
		
	}
	
}
