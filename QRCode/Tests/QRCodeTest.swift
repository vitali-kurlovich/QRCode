//
//  QRCodeTest.swift
//  QRCode Generator Tests
//
//  Created by Vitali Kurlovich on 11/8/17.
//

import XCTest

@testable import QRCodeGenerator

class QRCodeTests: XCTestCase {
	
	func testQRCodeNumber () throws {

		var qr = try QRCode("777", .H)
		var result =	[[true ,true ,true ,true ,true ,true ,true ,false,true ,true ,true ,true ,false,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,false,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,false,true ,true ,false,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,true ,true ,false,false,false,false,false,false,false,false,false,false],
			 [false,false,true ,false,true ,true ,true ,false,true ,false,false,false,false,true ,false,false,false,true ,false,false,true ],
			 [false,false,true ,false,false,true ,false,true ,false,false,true ,false,false,false,true ,true ,false,true ,false,false,false],
			 [true ,false,false,false,false,true ,true ,true ,true ,true ,false,false,true ,true ,false,true ,false,false,true ,false,false],
			 [false,true ,false,false,true ,true ,false,false,false,false,false,false,true ,false,false,true ,true ,true ,false,true ,false],
			 [false,false,false,false,true ,false,true ,true ,true ,false,false,false,true ,true ,false,true ,false,false,true ,false,true ],
			 [false,false,false,false,false,false,false,false,true ,false,true ,true ,true ,true ,true ,false,false,false,true ,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,false,true ,false,false,false,false,true ,false,false,true ,false],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,false,false,true ,false,false,false,false,true ,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,false,false,false,false,true ,false,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,true ,true ,true ,true ,true ,false,true ,false,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,false,false,true ,true ,false,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,true ,false,true ,false,true ,true ,true ,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,false,false,true ,false,true ,false,true ,true ,false,true ]]
	
	
		XCTAssertEqualMultiarray(qr.modules, result)
		
		print(String(qr))
		
	
		qr = try QRCode("777", .M)
		
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,false,false,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,true ,true ,true ,false,false,false,false,false,false,false,false],
			 [true ,false,true ,true ,true ,true ,true ,false,false,true ,true ,false,true ,false,true ,true ,true ,true ,true ,false,false],
			 [false,true ,true ,true ,true ,false,false,true ,false,true ,false,false,true ,false,false,true ,false,false,true ,true ,false],
			 [true ,false,true ,false,true ,true ,true ,true ,true ,false,true ,true ,false,true ,false,false,true ,false,true ,false,true ],
			 [false,true ,false,false,true ,false,false,true ,false,true ,true ,false,false,false,false,true ,true ,false,true ,false,false],
			 [true ,true ,false,true ,true ,false,true ,false,false,false,true ,true ,false,true ,false,false,true ,false,true ,false,false],
			 [false,false,false,false,false,false,false,false,true ,false,false,true ,true ,true ,true ,false,false,true ,false,true ,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,true ,false,true ,false,true ,true ,false,false,false,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,true ,true ,true ,false,false,true ,false,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,true ,false,false,true ,false,false,true ,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,true ,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,false,true ,false,false,true ,true ,true ,false,false],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,false,false,false,false,true ,true ,false,true ,true ,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,false,true ,true ,true ,false,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		
		print(String(qr))
		

		qr = try QRCode("777", .Q)
		
		result =
		[[true ,true ,true ,true ,true ,true ,true ,false,false,false,true ,true ,false,false,true ,true ,true ,true ,true ,true ,true ],
		 [true ,false,false,false,false,false,true ,false,true ,true ,false,false,true ,false,true ,false,false,false,false,false,true ],
		 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,false,true ,false,true ,true ,true ,false,true ],
		 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
		 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
		 [true ,false,false,false,false,false,true ,false,false,false,true ,true ,false,false,true ,false,false,false,false,false,true ],
		 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
		 [false,false,false,false,false,false,false,false,false,true ,false,false,true ,false,false,false,false,false,false,false,false],
		 [false,true ,true ,true ,false,true ,true ,false,false,true ,true ,false,true ,false,false,false,false,false,true ,true ,false],
		 [true ,true ,false,false,false,true ,false,false,false,false,true ,true ,true ,false,false,true ,false,false,true ,true ,false],
		 [true ,false,false,false,true ,true ,true ,false,false,true ,true ,false,true ,true ,true ,true ,true ,true ,false,false,false],
		 [true ,true ,true ,false,false,false,false,false,true ,true ,false,false,false,true ,false,false,false,false,false,true ,false],
		 [false,true ,false,false,true ,false,true ,true ,false,true ,false,false,false,true ,false,false,true ,false,true ,false,false],
		 [false,false,false,false,false,false,false,false,true ,true ,false,true ,true ,true ,false,true ,false,false,true ,true ,false],
		 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,true ,true ,true ,true ,false,true ,false,true ,false,true ],
		 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,true ,true ,true ,false,false,true ,false,false,false],
		 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,false,false,true ,false,false,true ,false,false,true ],
		 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,false,false,true ,false,false,true ,false,false,true ,false],
		 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,false,true ,false,false,true ,true ,true ,false,false],
		 [true ,false,false,false,false,false,true ,false,true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ],
		 [true ,true ,true ,true ,true ,true ,true ,false,false,false,false,true ,true ,false,false,true ,false,true ,false,true ,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))

		qr = try QRCode("777", .L)
		result =
		[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
		 [true ,false,false,false,false,false,true ,false,true ,false,false,true ,false,false,true ,false,false,false,false,false,true ],
		 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,false,false,true ,false,true ,true ,true ,false,true ],
		 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,true ,false,false,true ,false,true ,true ,true ,false,true ],
		 [true ,false,true ,true ,true ,false,true ,false,false,false,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ],
		 [true ,false,false,false,false,false,true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,false,false,true ],
		 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
		 [false,false,false,false,false,false,false,false,false,false,true ,true ,true ,false,false,false,false,false,false,false,false],
		 [true ,true ,true ,true ,true ,false,true ,true ,true ,true ,false,false,true ,true ,false,true ,false,true ,false,true ,false],
		 [true ,false,true ,false,false,false,false,false,true ,true ,false,false,true ,false,false,true ,false,false,true ,true ,false],
		 [true ,false,false,false,true ,true ,true ,false,true ,true ,true ,true ,false,true ,false,false,true ,false,true ,false,true ],
		 [false,false,true ,true ,true ,false,false,false,true ,true ,false,false,false,false,false,true ,true ,false,true ,false,false],
		 [true ,true ,false,false,true ,true ,true ,false,true ,false,false,true ,false,true ,false,false,true ,false,true ,false,false],
		 [false,false,false,false,false,false,false,false,true ,true ,false,true ,true ,true ,true ,false,false,true ,false,true ,true ],
		 [true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,false,true ,false,true ,true ,false,false,false,true ,true ],
		 [true ,false,false,false,false,false,true ,false,false,false,true ,true ,true ,true ,true ,false,false,true ,false,false,false],
		 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,true ,false,false,true ,false,false,true ,false,false],
		 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,true ,false,false,true ,false,false,true ,false,false],
		 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,false,true ,false,false,true ,true ,true ,false,false],
		 [true ,false,false,false,false,false,true ,false,true ,true ,true ,false,false,false,false,true ,true ,false,true ,true ,false],
		 [true ,true ,true ,true ,true ,true ,true ,false,true ,true ,true ,true ,false,true ,false,false,true ,true ,true ,false,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
	}
	
	
	func testQRCodeAlphaNumber () throws {
	
	
		var qr = try QRCode("ABC0123ZY+*/%.- .:$%9")
		var result =
			[[true ,true ,true ,true ,true ,true ,true ,false,true ,false,false,true ,true ,true ,true ,false,false,true ,false,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,false,false,false,true ,false,false,false,false,true ,true ,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,true ,true ,true ,true ,false,true ,true ,false,true ,false,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,false,true ,true ,true ,false,false,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,true ,false,true ,true ,true ,true ,false,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,false,false,true ,true ,false,false,false,true ,true ,true ,false,false,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,true ,true ,true ,false,true ,true ,true ,true ,false,false,true ,false,false,false,false,false,false,false,false,false],
			 [false,false,false,true ,false,false,true ,false,false,false,true ,false,false,false,true ,true ,false,true ,false,false,false,false,false,true ,true ,true ,false,true ,true ],
			 [true ,true ,true ,false,false,false,false,true ,true ,true ,false,false,true ,false,false,false,false,false,false,true ,true ,true ,false,false,true ,false,true ,false,false],
			 [true ,false,true ,true ,false,true ,true ,true ,false,false,false,true ,false,true ,true ,true ,true ,true ,false,false,true ,true ,false,false,false,true ,false,true ,true ],
			 [true ,false,false,true ,true ,true ,false,true ,false,false,false,true ,true ,false,false,false,false,true ,false,false,false,true ,true ,true ,true ,false,true ,true ,false],
			 [false,true ,false,true ,false,false,true ,false,false,true ,false,true ,false,false,true ,true ,false,true ,true ,true ,true ,false,true ,true ,true ,false,true ,true ,false],
			 [false,false,false,false,false,false,false,true ,true ,true ,true ,false,false,false,true ,false,false,false,true ,true ,true ,true ,false,false,false,true ,false,true ,true ],
			 [false,true ,false,true ,false,false,true ,false,false,true ,true ,false,false,false,true ,false,false,false,true ,false,true ,false,true ,false,true ,false,false,true ,true ],
			 [false,true ,true ,false,true ,true ,false,false,true ,false,false,true ,true ,false,false,true ,true ,true ,true ,false,false,false,false,false,false,true ,false,false,false],
			 [false,false,false,false,true ,true ,true ,false,false,true ,false,false,true ,false,false,true ,false,true ,false,false,false,false,false,true ,true ,false,false,true ,true ],
			 [false,false,true ,false,true ,false,false,true ,true ,true ,true ,true ,true ,true ,false,true ,false,false,true ,true ,true ,false,false,false,false,true ,false,false,false],
			 [true ,false,true ,false,true ,false,true ,false,false,true ,true ,false,false,false,true ,true ,true ,false,true ,false,false,false,true ,true ,true ,false,true ,false,false],
			 [false,false,false,true ,true ,true ,false,false,true ,true ,false,false,false,false,false,true ,true ,false,true ,false,false,true ,false,true ,false,false,false,true ,false],
			 [true ,false,true ,false,false,false,true ,true ,false,true ,true ,false,true ,true ,false,false,true ,false,true ,false,true ,true ,true ,true ,true ,false,false,false,false],
			 [false,false,false,false,false,false,false,false,true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,false,true ,false,false,false,true ,true ,true ,true ,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,false,false,true ,false,true ,true ,true ,false,true ,true ,false,true ,false,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,false,false,true ,true ,true ,true ,true ,false,false,false,false,false,true ,false,false,false,true ,true ,true ,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,false,true ,false,false,false,true ,false,false,true ,true ,true ,true ,true ,true ,false,true ,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,true ,false,true ,false,false,true ,false,false,false,false,false,true ,false,true ,true ,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,false,false,false,true ,false,false,false,false,false,false,false,false,false,false,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,false,false,true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,false,true ,true ,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,false,true ,true ,true ,true ,false,true ,true ,false,false,false,true ,false,false,true ,true ,false,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		
		
		 qr = try QRCode("ABC0123ZY+*/%.- .:$%9", .M)
		 result =
			[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,false,true ,true ,false,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,false,false,false,true ,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,true ,true ,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,true ,false,true ,false,false,false,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,true ,false,false,false,true ,true ,false,true ,false,false,false,false,false,false,false,false],
			 [true ,false,true ,false,true ,false,true ,false,false,false,false,false,true ,false,true ,true ,true ,false,false,false,true ,false,false,true ,false],
			 [true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,true ,false,false,true ,true ,false,true ],
			 [true ,false,true ,false,false,true ,true ,false,false,true ,true ,true ,true ,true ,false,false,true ,false,true ,true ,false,false,true ,false,true ],
			 [false,true ,false,false,false,false,false,false,false,true ,true ,false,false,false,false,true ,false,false,true ,true ,true ,true ,false,true ,false],
			 [false,false,true ,true ,true ,false,true ,true ,false,true ,true ,false,true ,false,false,true ,true ,false,false,true ,true ,false,true ,true ,true ],
			 [false,false,true ,true ,true ,true ,false,false,false,false,false,true ,true ,true ,false,true ,true ,true ,true ,false,true ,true ,true ,false,false],
			 [true ,false,true ,false,false,true ,true ,false,true ,true ,false,true ,true ,false,true ,false,true ,true ,false,false,true ,true ,false,true ,false],
			 [false,true ,true ,false,false,false,false,false,false,false,true ,false,true ,true ,true ,false,true ,true ,false,true ,false,false,true ,true ,false],
			 [true ,false,true ,false,true ,true ,true ,true ,true ,false,true ,true ,false,false,true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false],
			 [false,false,false,false,false,false,false,false,true ,true ,false,true ,false,false,true ,true ,true ,false,false,false,true ,false,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,false,false,true ,false,false,true ,false,true ,false,true ,true ,true ,false,false],
			 [true ,false,false,false,false,false,true ,false,false,false,false,true ,false,false,false,false,true ,false,false,false,true ,false,false,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ,false,false,false,true ,true ,true ,true ,true ,true ,true ,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,true ,true ,false,false,false,false,true ,true ,true ,false,false,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,true ,false,true ,true ,false,true ,false,true ,false,false,false,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,false,true ,true ,true ,true ,true ,true ,true ,true ,true ,true ,false,true ,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,true ,false,false,true ,true ,false,false,true ,false,true ,false,false,false,true ]]
		
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		

		qr = try QRCode("ABC0123ZY+*/%.- .:$%9", .Q)
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,false,false,true ,true ,true ,false,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,false,false,true ,true ,true ,false,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,true ,false,false,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,false,false,false,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,false,false,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,false,true ,true ,false,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,true ,false,false,false,false,false,true ,true ,false,false,false,false,false,false,false,false],
			 [false,true ,true ,true ,false,true ,true ,false,false,true ,false,true ,false,true ,false,true ,true ,false,false,false,false,false,true ,true ,false],
			 [false,false,false,false,true ,true ,false,false,false,true ,true ,false,false,true ,true ,true ,false,false,false,true ,false,true ,true ,true ,false],
			 [true ,true ,false,false,true ,false,true ,false,false,true ,false,false,false,true ,false,false,false,true ,false,true ,false,false,false,true ,false],
			 [false,true ,true ,true ,true ,true ,false,true ,false,false,true ,false,false,false,false,false,true ,true ,true ,true ,true ,false,true ,false,false],
			 [true ,false,true ,false,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,false,false,false,true ,false,true ,false,true ,true ],
			 [false,true ,false,false,false,false,false,false,true ,false,false,true ,true ,false,true ,false,true ,true ,true ,true ,false,false,true ,false,false],
			 [false,true ,false,true ,false,false,true ,false,true ,true ,true ,false,false,true ,true ,false,true ,true ,true ,true ,false,true ,false,true ,true ],
			 [true ,false,true ,true ,false,true ,false,false,false,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,false,false,true ,false,true ],
			 [false,false,true ,true ,true ,false,true ,false,false,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ,false,false,false,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,false,false,true ,true ,true ,false,true ,false,false,false,true ,true ,true ,true ,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,true ,false,false,true ,false,true ,true ,false,true ,false,true ,false,false,false,false],
			 [true ,false,false,false,false,false,true ,false,true ,false,true ,false,false,true ,true ,true ,true ,false,false,false,true ,true ,false,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,false,true ,false,false,true ,true ,true ,true ,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,true ,true ,false,false,false,true ,false,false,true ,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,false,false,false,true ,true ,false,true ,true ,false,false,true ,true ,false],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,true ,true ,false,false,false,false,true ,true ,true ,false,true ,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,false,false,false,true ,false,false,true ,false,true ,false,false,true ,true ,false,true ]]
		
	
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		
		qr = try QRCode("ABC0123ZY+*/%.- .:$%9", .L)
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,false,true ,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,true ,true ,true ,true ,false,false,false,false,false,false,false,false],
			 [true ,true ,false,false,true ,true ,true ,false,false,true ,false,true ,false,false,false,true ,false,true ,true ,true ,true ],
			 [true ,false,false,true ,false,true ,false,false,true ,false,false,false,true ,true ,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,false,true ,true ,true ,true ,true ,false,false,false,false,false,false,false,false,true ,false,true ,true ],
			 [true ,false,false,false,true ,false,false,true ,false,true ,false,false,false,true ,true ,true ,false,true ,false,false,false],
			 [false,true ,true ,true ,false,false,true ,false,false,true ,false,true ,false,false,true ,false,false,true ,false,false,false],
			 [false,false,false,false,false,false,false,false,true ,false,false,false,false,true ,false,false,true ,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,false,true ,true ,true ,true ,true ,true ,false,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,false,true ,false,true ,false,true ,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,false,false,true ,false,true ,false,false,true ,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,true ,false,true ,true ,true ,false,false,false,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,true ,false,true ,true ,true ,false,true ,false,true ,false,false],
			 [true ,false,false,false,false,false,true ,false,true ,true ,true ,true ,false,false,true ,false,true ,false,true ,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,true ,false,false,true ,true ,true ]]
		
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
	}
	
		
	func testQRCodeKanji () throws {
		
		var qr = try QRCode("々ぁァ字")
		var result =
			[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,true ,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,false,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,true ,false,true ,false,false,false,false,false,false,false,false],
			 [false,false,false,false,true ,true ,true ,true ,false,true ,true ,true ,true ,false,true ,true ,false,false,false,true ,false],
			 [true ,false,true ,true ,true ,true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,false,true ,true ,true ],
			 [false,true ,true ,false,true ,false,true ,false,false,false,false,false,true ,true ,false,true ,true ,true ,false,true ,true ],
			 [true ,false,true ,true ,true ,false,false,true ,true ,false,false,false,true ,false,false,true ,true ,false,false,false,false],
			 [false,true ,false,false,true ,false,true ,false,false,true ,true ,true ,true ,false,true ,false,false,false,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,false,true ,false,false,false,true ,false,true ,true ,true ,true ,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,false,false,true ,true ,false,false,true ,false,false],
			 [true ,false,false,false,false,false,true ,false,true ,false,false,true ,false,true ,true ,false,true ,false,true ,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,false,false,false,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,true ,false,false,true ,false,true ,false,true ,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,true ,true ,true ,false,true ,false,false,true ,false,false],
			 [true ,false,false,false,false,false,true ,false,false,false,true ,false,true ,false,true ,true ,true ,true ,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,false,true ,false,false,true ,false,false,false,true ,true ,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		
		
		 qr = try QRCode("々ぁァ字", .M)
		 result =
			[[true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,true ,true ,true ,false,false,false,false,false,false,false,false],
			 [true ,false,true ,true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,false,true ,false,true ,true ],
			 [false,false,true ,true ,true ,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,false],
			 [false,true ,true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,false,false,false,true ,false,true ,false],
			 [true ,true ,false,false,true ,false,false,true ,false,true ,false,true ,false,false,true ,false,true ,true ,false,true ,false],
			 [true ,false,true ,false,true ,false,true ,true ,false,true ,false,false,true ,false,false,true ,false,false,true ,false,false],
			 [false,false,false,false,false,false,false,false,true ,true ,true ,true ,false,false,true ,false,true ,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,true ,true ,false,false,false,false,true ,true ,true ,false],
			 [true ,false,false,false,false,false,true ,false,true ,false,true ,false,false,false,false,false,false,true ,false,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,true ,true ,true ,false,false,true ,false,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,true ,false,false,true ,false,false,false,false,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,false,false,false],
			 [true ,false,false,false,false,false,true ,false,false,false,true ,false,false,true ,false,false,false,true ,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,false,false,true ,false,false,true ,false,false,true ,true ]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		

		qr = try QRCode("々ぁァ字", .Q)
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,true ,false,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,false,false,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,true ,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,true ,false,true ,false,false,false,false,false,false,false,false,false],
			 [false,true ,false,false,true ,false,true ,false,true ,true ,false,true ,false,true ,false,true ,true ,false,true ,false,false],
			 [true ,false,true ,false,false,true ,false,true ,true ,false,false,false,true ,false,false,false,false,false,true ,true ,true ],
			 [true ,true ,false,false,true ,true ,true ,false,true ,false,true ,true ,false,false,true ,true ,true ,true ,false,true ,true ],
			 [true ,true ,false,false,false,false,false,true ,true ,false,false,false,false,true ,true ,true ,true ,false,false,false,false],
			 [false,true ,true ,true ,false,true ,true ,false,true ,true ,true ,true ,true ,true ,true ,false,false,false,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,false,true ,true ,true ,true ,true ,false,true ,true ,true ,true ,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,false,false,false,true ,false,true ,false,false,true ,false,false],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,true ,true ,false,false,false,true ,false,true ,false,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,false,false,true ,false,false,false,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,true ,false,false,false,true ,false,true ,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,true ,false,false,true ,true ,false,false,true ,false,false],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,false,false,true ,true ,true ,true ,true ,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,true ,false,true ,true ,true ,false,false,false,true ,true ,false]]
		
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		

		qr = try QRCode("々ぁァ字", .L)
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,true ,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,true ,false,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,false,false,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,false,true ,true ,false,false,false,false,false,false,false,false],
			 [true ,true ,true ,false,true ,true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,false,false,true ,false,false],
			 [true ,false,true ,false,true ,true ,false,false,true ,true ,false,false,false,false,true ,true ,false,true ,false,true ,false],
			 [true ,false,true ,false,false,true ,true ,true ,true ,false,false,false,true ,false,false,false,true ,false,true ,true ,false],
			 [true ,false,true ,false,true ,false,false,false,true ,true ,false,false,false,false,true ,true ,false,false,false,true ,false],
			 [false,false,false,false,false,false,true ,false,true ,true ,false,false,true ,false,true ,false,true ,false,true ,false,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,true ,true ,false,true ,false,true ,true ,false,false,true ,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,false,false,true ,false,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,true ,true ,false,false,false,false,true ,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,false,true ,true ,false,true ,false,true ,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,false,false,true ,true ,true ,true ,false,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,true ,false,false,false,false,true ,false,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,false,true ,false,false,false,true ,true ,false,true ,false,true ,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,false,true ,false,true ,false,true ,false,true ,false,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		
	}
	
	func testQRCode8Bit () throws {
		
		var qr = try QRCode("Русский")
		var result =
			[[true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,false,true ,false,true ,false,false,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,false,false,true ,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,true ,true ,true ,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,true ,false,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,false,false,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,true ,false,false,true ,true ,false,false,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,true ,true ,false,false,true ,false,false,true ,false,false,false,false,false,false,false,false],
			 [false,false,false,true ,false,false,true ,false,false,false,true ,true ,true ,false,false,true ,false,false,false,true ,true ,true ,false,true ,true ],
			 [false,true ,false,true ,false,false,false,true ,false,false,true ,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,true ],
			 [true ,true ,false,false,true ,true ,true ,false,false,true ,true ,true ,true ,true ,true ,false,false,true ,true ,false,true ,true ,false,false,false],
			 [false,false,false,false,false,false,false,false,false,false,true ,true ,true ,false,true ,true ,true ,false,false,true ,false,false,false,false,false],
			 [true ,false,true ,false,false,false,true ,true ,true ,false,true ,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,true ,false,false],
			 [false,false,false,false,true ,false,false,false,false,false,true ,false,true ,true ,true ,true ,true ,true ,false,false,true ,false,true ,true ,false],
			 [true ,false,false,false,true ,false,true ,false,false,true ,true ,true ,false,true ,false,false,false,false,false,true ,false,true ,true ,true ,false],
			 [false,true ,true ,true ,true ,true ,false,true ,true ,false,false,false,false,false,false,true ,false,false,true ,false,true ,true ,false,true ,true ],
			 [true ,true ,true ,false,false,false,true ,true ,false,false,true ,false,true ,false,false,false,true ,true ,true ,true ,true ,false,false,false,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,false,true ,true ,true ,true ,true ,true ,false,false,false,true ,false,false,true ,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,true ,false,true ,true ,true ,false,true ,false,true ,false,true ,false,false,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,true ,true ,false,false,false,true ,false,false,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,true ,true ,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,true ,true ,true ,false,true ,true ,false,false,false,true ,true ,true ,true ,false],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,true ,true ,false,false,true ,true ,false,true ,true ,true ,false,false,false,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,false,false,false,true ,true ,false,false,false,false,true ,true ,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,true ,false,true ,true ,false,true ,false,true ,false,true ,true ,false,false,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		

		qr = try QRCode("Русский", .M)
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,true ,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,false,false,false,true ,false,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,true ,false,false,false,false,false,false,false,false,false,false],
			 [true ,false,false,false,true ,false,true ,true ,true ,true ,true ,false,true ,true ,true ,true ,true ,true ,false,false,true ],
			 [true ,false,false,true ,false,true ,false,true ,true ,false,false,false,true ,false,false,true ,true ,false,false,true ,true ],
			 [false,false,false,true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,false,true ,true ,true ,false,false,true ],
			 [true ,false,true ,false,false,false,false,true ,false,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [false,false,true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,false,false,false,false,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,true ,true ,false,false,false,false],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,true ,false,true ,true ,true ,true ,false,false,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,true ,true ,false,false,true ,false,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,true ,false,true ,false,true ,true ,true ,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,true ,false,false,false,false,true ,true ,false,false,false,false],
			 [true ,false,false,false,false,false,true ,false,false,false,false,false,true ,true ,false,true ,false,true ,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,true ,false,false,true ,true ,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		
		
		qr = try QRCode("Русский", .Q)
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,true ,false,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,false,true ,false,false,false,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,true ,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,false,false,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,true ,true ,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,false,false,true ,false,false,false,false,false,false,false,false,false],
			 [false,true ,false,false,true ,false,true ,false,true ,false,false,false,true ,true ,false,true ,true ,false,true ,false,false],
			 [false,true ,true ,true ,true ,false,false,false,false,false,false,false,false,false,false,true ,true ,false,false,true ,true ],
			 [true ,true ,true ,false,false,false,true ,false,true ,false,false,false,false,true ,false,true ,true ,true ,false,false,true ],
			 [true ,true ,true ,false,false,true ,false,true ,true ,true ,false,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,true ,true ,true ,false,true ,true ,true ,true ,false,true ,true ,false,true ,true ,false,false,false,false,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,true ,false,true ,false,true ,false,true ,true ,false,true ,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,false,false,true ,true ,false,true ,true ,false,false,false,false],
			 [true ,false,false,false,false,false,true ,false,false,true ,true ,true ,false,true ,true ,true ,true ,false,false,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,false,true ,false,true ,false,false,true ,false,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,false,false,true ,false,true ,false,true ,true ,true ,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,false,false,false,false,true ,true ,false,false,false,false],
			 [true ,false,false,false,false,false,true ,false,true ,false,true ,false,true ,true ,false,true ,false,true ,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,true ,true ,true ,false,true ,true ,true ,false,false,true ,true ,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
		

		qr = try QRCode("Русский", .L)
		result =
			[[true ,true ,true ,true ,true ,true ,true ,false,true ,false,false,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,false,false,true ,false,false,false,false,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,true ,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [true ,false,false,false,false,false,true ,false,true ,false,true ,false,true ,false,true ,false,false,false,false,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ,true ,true ],
			 [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false],
			 [true ,true ,false,false,true ,true ,true ,false,false,false,false,false,true ,false,false,true ,false,true ,true ,true ,true ],
			 [true ,false,true ,false,true ,false,false,true ,true ,true ,true ,false,true ,false,false,true ,true ,false,false,true ,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,false,true ,false,true ,true ,false,true ,true ,true ,false,false,true ],
			 [true ,true ,false,false,true ,true ,false,true ,true ,false,false,true ,true ,false,true ,false,true ,true ,true ,false,true ],
			 [false,true ,true ,false,true ,true ,true ,true ,false,false,false,true ,false,true ,true ,false,false,false,false,true ,true ],
			 [false,false,false,false,false,false,false,false,true ,false,true ,false,true ,true ,false,true ,true ,false,true ,false,true ],
			 [true ,true ,true ,true ,true ,true ,true ,false,false,false,false,true ,false,true ,false,true ,true ,false,false,false,false],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,true ,false,true ,true ,true ,true ,false,false,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,true ,false,false,false,true ,true ,false,false,true ,false,true ,false,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,true ,true ,false,true ,false,true ,false,true ,true ,true ,true ,true ],
			 [true ,false,true ,true ,true ,false,true ,false,false,false,false,false,false,false,false,true ,true ,false,false,false,false],
			 [true ,false,false,false,false,false,true ,false,true ,true ,false,false,true ,true ,false,true ,false,true ,false,false,false],
			 [true ,true ,true ,true ,true ,true ,true ,false,true ,true ,false,true ,false,true ,true ,true ,false,false,true ,true ,false]]
		
		XCTAssertEqualMultiarray(qr.modules, result)
		print(String(qr))
	}

}
