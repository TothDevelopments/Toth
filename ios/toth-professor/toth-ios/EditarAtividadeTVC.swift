//
//  EditarAtividade.swift
//  toth-ios
//
//  Created by Andre Rosa on 14/04/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import Eureka
import Foundation

class EditarAtividadeTVC: FormViewController {
    override func viewDidLoad() {
        
        super.viewDidLoad()
       // var fieldCounter = 0
        
        form +++
            MultivaluedSection(
                multivaluedOptions: [.Reorder, .Insert, .Delete],
                header: "Multivalued TextField",
                footer: ".Insert multivaluedOption adds the 'Add New Tag' button row as last cell.") {
                    $0.addButtonProvider = { section in
                        return ButtonRow(){
                            $0.title = "Nova Questão"
                            }.cellUpdate { cell, row in
                                cell.textLabel?.textAlignment = .left
                        }
                    }
                    $0.multivaluedRowToInsertAt = { index in
                        return  ButtonRow("Editar Questão") { (row: ButtonRow) in
                            row.title = row.tag
                            row.cellStyle = .value1
                            row.updateCell()
                        }
                            .onCellSelection({ (cell, row) in
                                self.performSegue(withIdentifier: "EditarQuestao", sender: self)
                            })
                    }
                    
        }
        
//        
//        form
//            +++ Section(header: "Required Rule", footer: "Options: Validates on change")
//        <<< TextoRow()

        
    }
    
}




