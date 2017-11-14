//
//  QRPolynomialTest.swift
//  QRCode GeneratorTests
//
//  Created by Vitali Kurlovich on 11/11/17.
//  Copyright © 2017 Vitali Kurlovich. All rights reserved.
//

import XCTest

class QRPolynomialTest: XCTestCase {

	func testQRPolynomial() {
		
		let pa = QRPolynomial([1,2,3])
		let pb = QRPolynomial([1,2,3])
		XCTAssertEqual(pa, pb)
		
		XCTAssertEqual(try? pa * pb, QRPolynomial([1,0,4,0,5]))
		XCTAssertEqual(try? pa % pb, QRPolynomial([]))
		
		let pc = QRPolynomial([4,5,6])
		XCTAssertEqual(try? pa * pc, QRPolynomial([4,13,0,3,10]))
		XCTAssertEqual(try? pa % pc, QRPolynomial([68,140]))
	}
}
