//
//  ViewController.swift
//  PDFView1
//
//  Created by Bumseok Lee on 20190114.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    @IBOutlet weak var pdfView: PDFView!
    @IBAction func copyAction(_ sender: Any) {
        UIGraphicsBeginImageContext(pdfView.bounds.size)
        defer {
            UIGraphicsEndImageContext()
        }
        if let context = UIGraphicsGetCurrentContext() {
            pdfView.layer.render(in: context)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIPasteboard.general.image = image
            print("paste")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = Bundle.main.path(forResource: "trisurf3d", ofType: "pdf") {
            let url = URL(fileURLWithPath: path)
            if let pdfDocument = PDFDocument(url: url) {
                pdfView.displayMode = .singlePageContinuous
                pdfView.autoScales = true
                pdfView.document = pdfDocument
            }
        }
    }


}

