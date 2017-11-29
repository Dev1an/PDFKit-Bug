//
//  ViewController.swift
//  pdfKitBug
//
//  Created by Damiaan on 29/11/17.
//  Copyright © 2017 Devian. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {
	
	let document = PDFDocument()
	var pdfView: PDFView {
		return view as! PDFView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		
		pdfView.document = document
		pdfView.autoScales = true
		pdfView.backgroundColor = .lightGray
	}
	
	@IBAction func addImage(_ sender: Any) {
		if let page = PDFPage(image: #imageLiteral(resourceName: "starScene")) {
			document.insert(page, at: 0)
			pdfView.layoutDocumentView()
			pdfView.goToFirstPage(sender)
		}
	}
}
