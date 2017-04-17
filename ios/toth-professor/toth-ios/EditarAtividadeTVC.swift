//
//  EditarAtividade.swift
//  toth-ios
//
//  Created by Andre Rosa on 14/04/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import Eureka

class EditarAtividadeTVC: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        form +++ Section("Section1")
            <<< TextRow(){ row in
                row.title = "Text Row"
                row.placeholder = "Enter text here"
            }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "And numbers here"
            }
            +++ Section("Section2")
            <<< DateRow(){
                $0.title = "Date Row"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        }

        self.navigationController?.isToolbarHidden = false

        var items = [UIBarButtonItem]()
        items.append(
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        )
        items.append(
            UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
        )
        self.navigationController?.toolbar.items = items
        
    }



}
