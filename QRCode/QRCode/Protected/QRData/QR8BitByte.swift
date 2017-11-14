//
//  QR8BitByte.swift
//  QRCode Generator
//
//  Created by Vitali Kurlovich on 11/9/17.
//



final class QR8BitByte: QRData {
	
	init(_ data:String) {
		super .init(QRMode.MODE_8BIT_BYTE, data)
	}
	
	override var lenght: Int {
		get {
			let bdata = data.data(using: .shiftJIS, allowLossyConversion: true)!
			return bdata.count;
		}
	}
	
	override func write(_ buffer: inout QRBitBuffer ) {
		let bdata = data.data(using: .shiftJIS, allowLossyConversion: true)!
		
		for d in bdata {
			buffer.put(Int(d), 8);
		}
	}
}
