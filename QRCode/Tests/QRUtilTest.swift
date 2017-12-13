//
//  QRUtilTest.swift
//  QRCode GeneratorTests
//
//  Created by Vitali Kurlovich on 11/11/17.
//  Copyright © 2017 Vitali Kurlovich. All rights reserved.
//

import XCTest

@testable import QRCodeGenerator

class QRUtilTest: XCTestCase {

	func testMode() {
		
		XCTAssertEqual(QRUtil.getMode("々ぁァ字"), QRData.QRMode.MODE_KANJI)
		XCTAssertEqual(QRUtil.getMode("漢字"), QRData.QRMode.MODE_KANJI)
		XCTAssertEqual(QRUtil.getMode("ABC"), QRData.QRMode.MODE_ALPHA_NUM)
		XCTAssertEqual(QRUtil.getMode("ABC0123ZY+*/%.- .:$%9"), QRData.QRMode.MODE_ALPHA_NUM)
		XCTAssertEqual(QRUtil.getMode("123433433433443"), QRData.QRMode.MODE_NUMBER)
		XCTAssertEqual(QRUtil.getMode("https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html "), QRData.QRMode.MODE_8BIT_BYTE)
		XCTAssertEqual(QRUtil.getMode("США"), QRData.QRMode.MODE_KANJI)
		XCTAssertEqual(QRUtil.getMode("СШАs"), QRData.QRMode.MODE_8BIT_BYTE)
		
		
	}
}
