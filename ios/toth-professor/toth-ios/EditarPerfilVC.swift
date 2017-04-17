//
//  EditarPerfilVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 22/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import Eureka
import ImageRow

class EditarPerfilVC: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Editar Perfil"
       
        
        initializeForm()
    }
    
    
    
    private func initializeForm() {
        
        ImageRow.defaultCellUpdate = { cell, row in
            cell.accessoryView?.layer.cornerRadius = 17
            cell.accessoryView?.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        }
        
        form =
            Section(footer: "Digite seu nome e adicione uma foto (opcional) ao seu perfil")
            
            <<< ImageRow(){
                $0.title = "Foto de Perfil"
                $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum]
                $0.clearAction = .yes(style: UIAlertActionStyle.destructive)
                $0.value = UIImage(named:"stark.jpg")
            }
            
            <<< NameRow("Nome") {
                $0.placeholder = "Nome"
            }
        
            +++
            
            Section("Seu e-mail")
            
            <<< EmailRow("Descrição") {
                $0.placeholder = "E-mail"
                
        }
        
    }
    
}
