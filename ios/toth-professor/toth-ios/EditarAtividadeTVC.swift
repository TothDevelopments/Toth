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
        //var fieldCounter = 0
        
//        form +++
//            MultivaluedSection(
//                multivaluedOptions: [.Reorder, .Insert, .Delete],
//                header: "Multivalued TextField",
//                footer: ".Insert multivaluedOption adds the 'Add New Tag' button row as last cell.") {
//                    $0.addButtonProvider = { section in
//                        return ButtonRow(){
//                            $0.title = "Nova Questão"
//                            }.cellUpdate { cell, row in
//                                cell.textLabel?.textAlignment = .left
//                        }
//                    }
//                    $0.multivaluedRowToInsertAt = { index in
//                        return ActionSheetRow<String>{
//                            $0.title = "Tap to select.."
//                            $0.tag = "id\(fieldCounter += 1)"
//                            $0.options = ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5"]
//                        }
//                    }
//                    
//        }
        
        
        form +++ Section("Section1")
            <<< TextoCell(){ //row in
             //   row.value = User()
                     $0.cellProvider = CellProvider<TextoCell>(nibName: "TextoCell", bundle: Bundle.main)
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
        
        
    }
    
}




