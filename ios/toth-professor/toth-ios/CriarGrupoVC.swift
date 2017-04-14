//
//  CriarGrupoVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 22/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import Eureka
import ImageRow

class CriarGrupoVC: FormViewController {
    
    @IBOutlet weak var btnContinuar: UIBarButtonItem!
    
    @IBAction func dismissView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageRow.defaultCellUpdate = { cell, row in
            cell.accessoryView?.layer.cornerRadius = 17
            cell.accessoryView?.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        }
        
        form +++ Section("Dados do grupo")
            <<< TextRow(){ row in
                row.title = "Nome do Grupo"
                row.placeholder = "Nome do Grupo"
            }
            
            <<< ImageRow(){
                $0.title = "Imagem do grupo"
                $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum]
                $0.clearAction = .yes(style: UIAlertActionStyle.destructive)
                $0.value = UIImage(named:"stark.jpg")
            }
            
            +++ Section("Dados da escola")
            
            <<< TextRow(){ row in
                row.title = "Nome da Escola"
                row.placeholder = "Nome da Escola"
            }
            
            <<< PushRow<String>("ano") {
                $0.title = "Ano"
                $0.selectorTitle = "Ano"
                $0.options = ["6º ano", "7º ano", "8º ano", "9º ano", "1º colegial", "2º colegial", "3º colegial"]
            }
            
            <<< PushRow<String>("Turma") {
                $0.title = "Turma"
                $0.selectorTitle = "Turma"
                $0.options = ["A", "B", "C", "D", "E"]
            }
        
            +++ Section("Dados da disciplina")
        
            <<< PushRow<String>("Disciplina") {
                $0.title = "Disciplina"
                $0.selectorTitle = "Disciplina"
                $0.options = ["Português", "Matemática", "Ciências", "Filosofia", "Geografia", "História", "Biologia", "Educação física"]
            }

    }
}
