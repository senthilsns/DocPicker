//
//  ViewController.swift
//  DocPicker
//
//  Created by Senthil on 15/04/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController,UIDocumentPickerDelegate,UINavigationControllerDelegate {
    
    
    //MARK: Document Types
    var types = [kUTTypePDF, kUTTypeText, kUTTypeRTF, kUTTypeSpreadsheet,kUTTypePNG,kUTTypeJPEG,kUTTypeImage]


    //MARK: Button Action
    @IBAction func DocPicker_TouchUpInside(_ sender: Any) {
        
        let documentPicker = UIDocumentPickerViewController(documentTypes: types as [String] , in: .import)
        documentPicker.delegate = self
        documentPicker.modalPresentationStyle = .formSheet
        self.present(documentPicker, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //MARK: Document Picker Delegate
    public func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        
        /* Picker pick the specified Document and Given output as URL format */

                    guard let myURL = urls.first else {
                         return
                    }
                    print("import result : \(myURL)")
        
        
          }

      func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        
        // Picker Cancelled
                  print("view was cancelled")
                  dismiss(animated: true, completion: nil)
          }

    
    
}

