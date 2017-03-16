//
//  CriarAtividadeTVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 15/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class CriarAtividadeTVC: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var tituloAtividade: UITextField!
    @IBOutlet weak var descricaoAtividade: UITextView!
    @IBOutlet weak var tipoAtividade: UITextField!
    @IBOutlet weak var dataInicial: UITextField!
    @IBOutlet weak var dataFinal: UITextField!
    @IBOutlet weak var cellTipoAtividade: UITableViewCell!
    
    
    let atividades = ["Tarefa", "Trabalho", "Prova"]
    
    let datePicker = UIDatePicker()
    var atividadePicker = UIPickerView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        datePicker.datePickerMode = .date
        
        atividadePicker.delegate = self
        atividadePicker.dataSource = self
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tipoAtividade.inputView = atividadePicker
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        criarDatePicker()
    }
   
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return atividades.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return atividades[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tipoAtividade.text = atividades[row]
        self.view.endEditing(false)
    }
    
    // funcoes do dataPicker
    
    func criarDatePicker() {
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector (doneApertado))
        toolbar.setItems([doneButton], animated: true)
        
        //anexa a toolbar aos textfields
        dataInicial.inputAccessoryView = toolbar
        
        //anexa o datepicker aos textfields
        dataInicial.inputView = datePicker

    }
    
    func doneApertado() {
        
        // formatação da Data
        let formatoData = DateFormatter()
        formatoData.dateFormat = "dd/MM/yyyy"
        print(formatoData.string(from: datePicker.date))
        
        // grava a data no textfield
        dataInicial.text = formatoData.string(from: datePicker.date)
        
        self.view.endEditing(false)
    }

}
