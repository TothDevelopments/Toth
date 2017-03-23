//
//  CriarAtividadeTVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 15/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import Eureka

class CriarAtividadeTVC: FormViewController  {
    
    @IBOutlet weak var continuarBtn: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeForm()
        
        
     
    }
    
    @IBAction func dismissView(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func avancarCriacao(tipoCriacao: Any?){
        if (tipoCriacao as! String) != "Plano de aula" {
            continuarBtn.title = "Avançar"
        } else{
            continuarBtn.title = "Salvar"
        }
    }
    
    
    private func initializeForm() {
        
        form =
            Section()
        
            <<< TextRow("Título").cellSetup {
                cell,row in cell.textField.placeholder = row.tag
            }
            <<< PushRow<String>("tipoAtividade") {
                $0.title = "Tipo de atividade"
                $0.selectorTitle = "Atividade"
                $0.options = ["Plano de aula","Tarefa","Trabalho","Prova"]
                $0.value = "Plano de aula"
                }.onChange{ row in
                    if let value = row.baseValue {
                        self.avancarCriacao(tipoCriacao: value)
                        
                    }
                }
            
            +++
            
            Section(){
                $0.tag = "secPlanoAula"
                $0.hidden = "$tipoAtividade != 'Plano de aula'" 
            }
            
            <<< DateInlineRow() {
                $0.title = "Dia da aula"
                $0.value = Date()
            }
            
            +++
            
            Section(){
                $0.tag = "secPeriodos"
                $0.hidden = "$tipoAtividade == 'Plano de aula'"
            }
            
            <<< SwitchRow("Dia inteiro") {
                $0.title = $0.tag
                }.onChange { [weak self] row in
                    let startDate: DateTimeInlineRow! = self?.form.rowBy(tag: "Começa")
                    let endDate: DateTimeInlineRow! = self?.form.rowBy(tag: "Termina")
                    
                    if row.value ?? false {
                        startDate.dateFormatter?.dateStyle = .medium
                        startDate.dateFormatter?.timeStyle = .none
                        endDate.dateFormatter?.dateStyle = .medium
                        endDate.dateFormatter?.timeStyle = .none
                    }
                    else {
                        startDate.dateFormatter?.dateStyle = .short
                        startDate.dateFormatter?.timeStyle = .short
                        endDate.dateFormatter?.dateStyle = .short
                        endDate.dateFormatter?.timeStyle = .short
                    }
                    startDate.updateCell()
                    endDate.updateCell()
                    startDate.inlineRow?.updateCell()
                    endDate.inlineRow?.updateCell()
            }
            
            <<< DateTimeInlineRow("Começa") {
                $0.title = $0.tag
                $0.value = Date().addingTimeInterval(60*60*24)
                }
                .onChange { [weak self] row in
                    let endRow: DateTimeInlineRow! = self?.form.rowBy(tag: "Termina")
                    if row.value?.compare(endRow.value!) == .orderedDescending {
                        endRow.value = Date(timeInterval: 60*60*24, since: row.value!)
                        endRow.cell!.backgroundColor = .white
                        endRow.updateCell()
                    }
                }
                .onExpandInlineRow { cell, row, inlineRow in
                    inlineRow.cellUpdate { [weak self] cell, dateRow in
                        let allRow: SwitchRow! = self?.form.rowBy(tag: "Dia inteiro")
                        if allRow.value ?? false {
                            cell.datePicker.datePickerMode = .date
                        }
                        else {
                            cell.datePicker.datePickerMode = .dateAndTime
                        }
                    }
                    let color = cell.detailTextLabel?.textColor
                    row.onCollapseInlineRow { cell, _, _ in
                        cell.detailTextLabel?.textColor = color
                    }
                    cell.detailTextLabel?.textColor = cell.tintColor
            }
            
            <<< DateTimeInlineRow("Termina"){
                $0.title = $0.tag
                $0.value = Date().addingTimeInterval(60*60*25)
                }
                .onChange { [weak self] row in
                    let startRow: DateTimeInlineRow! = self?.form.rowBy(tag: "Começa")
                    if row.value?.compare(startRow.value!) == .orderedAscending {
                        row.cell!.backgroundColor = .red
                    }
                    else{
                        row.cell!.backgroundColor = .white
                    }
                    row.updateCell()
                }
                .onExpandInlineRow { cell, row, inlineRow in
                    inlineRow.cellUpdate { [weak self] cell, dateRow in
                        let allRow: SwitchRow! = self?.form.rowBy(tag: "Dia inteiro")
                        if allRow.value ?? false {
                            cell.datePicker.datePickerMode = .date
                        }
                        else {
                            cell.datePicker.datePickerMode = .dateAndTime
                        }
                    }
                    let color = cell.detailTextLabel?.textColor
                    row.onCollapseInlineRow { cell, _, _ in
                        cell.detailTextLabel?.textColor = color
                }
                cell.detailTextLabel?.textColor = cell.tintColor
            }
        

            +++
    
             TextAreaRow("Descrição") {
                $0.placeholder = "Descrição"
                $0.textAreaHeight = .dynamic(initialTextViewHeight: 200)
            }
        
    }
    
}
