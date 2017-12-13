//
//  QRBitBufferTest.swift
//  QRCode GeneratorTests
//
//  Created by Vitali Kurlovich on 11/11/17.
//  Copyright © 2017 Vitali Kurlovich. All rights reserved.
//

import XCTest

@testable import QRCodeGenerator

class QRBitBufferTest : XCTestCase {
	
	func testQRBitBufferPutBit() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
		
		var bitBuffer = QRBitBuffer()
		
		bitBuffer.put(true)
		bitBuffer.put(false)
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(false)
		bitBuffer.put(true)
		
		bitBuffer.put(false)
		bitBuffer.put(true)
		bitBuffer.put(false)
		bitBuffer.put(false)
		
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(false)
		
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(false)
		bitBuffer.put(false)
		
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(true)
		bitBuffer.put(false)
		
		XCTAssertTrue(bitBuffer[0])
		XCTAssertFalse(bitBuffer[1])
		XCTAssertTrue(bitBuffer[2])
		XCTAssertTrue(bitBuffer[3])
		XCTAssertTrue(bitBuffer[4])
		XCTAssertTrue(bitBuffer[5])
		XCTAssertFalse(bitBuffer[6])
		XCTAssertTrue(bitBuffer[7])
		XCTAssertFalse(bitBuffer[8])
		XCTAssertTrue(bitBuffer[9])
		
		XCTAssertFalse(bitBuffer[10])
		XCTAssertFalse(bitBuffer[11])
		XCTAssertTrue(bitBuffer[12])
		XCTAssertTrue(bitBuffer[13])
		XCTAssertTrue(bitBuffer[14])
		XCTAssertFalse(bitBuffer[15])
		
		XCTAssertTrue(bitBuffer[16])
		XCTAssertTrue(bitBuffer[17])
		XCTAssertFalse(bitBuffer[18])
		XCTAssertFalse(bitBuffer[19])
		
		XCTAssertTrue(bitBuffer[20])
		XCTAssertTrue(bitBuffer[21])
		XCTAssertTrue(bitBuffer[22])
		XCTAssertFalse(bitBuffer[23])
	}

}
