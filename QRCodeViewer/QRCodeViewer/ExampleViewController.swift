//
//  ViewController.swift
//  QRCodeViewer
//
//  Created by Vitali Kurlovich on 11/13/17.
//  Copyright © 2017 Vitali Kurlovich. All rights reserved.
//

import UIKit
import QRCodeGenerator


class ExampleViewController: UIViewController , UITextFieldDelegate {
	
	@IBOutlet weak var qrCodeView: QRCodeView?
	@IBOutlet weak var errorLevelControl: UISegmentedControl?
	@IBOutlet weak var qrTextField: UITextField?
	
	@IBOutlet weak var qrSmallImage: UIImageView?
	@IBOutlet weak var qrLargeImage: UIImageView?
	
	// MARK: - UIViewControl
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		errorLevelControl?.selectedSegmentIndex = segmentedSelectedIndex((qrCodeView?.errorCorrectionLevel)!)
		qrTextField?.text = qrCodeView?.text
		logQR(self.qrCodeView?.text, (self.qrCodeView?.errorCorrectionLevel)!)
	}
	
	// MARK: - UITextFieldDelegate
	
	public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		if let text = textField.text as NSString? {
			let txtAfterUpdate = text.replacingCharacters(in: range, with: string)
			self.qrCodeView?.text = txtAfterUpdate
			logQR(self.qrCodeView?.text, (self.qrCodeView?.errorCorrectionLevel)!)
		}
		return true
	}
	
	public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		textField.endEditing(true)
		return true;
	}
	
	
	// MARK: - Actions
	
	@IBAction func onChangeErrorCorrectionLevel(sender: UISegmentedControl) {
		switch sender.selectedSegmentIndex {
		case 0:
			updateErrorCorrectionLevel( QRCode.ErrorCorrectionLevel.H)
			break
			
		case 1:
			updateErrorCorrectionLevel(QRCode.ErrorCorrectionLevel.Q)
			break
			
		case 2:
			updateErrorCorrectionLevel(QRCode.ErrorCorrectionLevel.M)
			break
			
		case 3:
			updateErrorCorrectionLevel(QRCode.ErrorCorrectionLevel.L)
			break
			
		default:
			break
		}
	}
	
	@IBAction func onTap(recognizer: UIGestureRecognizer) {
		qrTextField?.endEditing(true)
	}
	
	// MARK: - Private
	private func segmentedSelectedIndex(_ level:QRCode.ErrorCorrectionLevel) -> Int {
		switch level {
		case QRCode.ErrorCorrectionLevel.H:
			return 0
			
		case QRCode.ErrorCorrectionLevel.Q:
			return 1
			
		case QRCode.ErrorCorrectionLevel.M:
			return 2
			
		case QRCode.ErrorCorrectionLevel.L:
			return 3
		}
	}
	
	private func updateErrorCorrectionLevel(_ level: QRCode.ErrorCorrectionLevel) {
		self.qrCodeView?.errorCorrectionLevel = level
		logQR(self.qrCodeView?.text, level)
	}
	
	private func logQR(_ text:String?, _ level: QRCode.ErrorCorrectionLevel) {
		if ((text) != nil) {
			let code = try! QRCode(text!, level)
			print(String(code))
			
			self.qrSmallImage?.image = UIImage.qrCodeImage(code, (self.qrSmallImage?.frame.size)!);
			self.qrLargeImage?.image = UIImage.qrCodeImage(code, (self.qrLargeImage?.frame.size)!, UIColor.orange, 8, UIColor.green.withAlphaComponent(0.3));
		}
	}
	
	
	

	
	
}

