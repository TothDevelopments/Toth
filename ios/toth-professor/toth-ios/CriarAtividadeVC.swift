//
//  CriarAtividadeVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 09/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class CriarAtividadeVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var nomeAtividade: UITextField!
    @IBOutlet weak var descricaoAtividade: UITextView!
    @IBOutlet weak var imgAtividade: UIImageView!
    @IBOutlet weak var tipoAtividade: UITextField!
    @IBOutlet weak var fieldInicio: UITextField!
    @IBOutlet weak var fieldFinal: UITextField!
    @IBOutlet weak var imgBackground: UIImageView!
    
    // tipos de atividade
    let atividades = ["Trabalho", "Prova", "Tarefa"]
    
    // instanciando uma atividade
    var ativ01 = Atividade()
    
    let datePicker = UIDatePicker()
    var atividadePicker = UIPickerView()
    
    var activeTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // formatação do dataPicker
        datePicker.datePickerMode = .date

        atividadePicker.delegate = self
        atividadePicker.dataSource = self
        
        //binding do textfield com o picker
        tipoAtividade.inputView = atividadePicker
        
        criarDatePicker()
    }
    
    //funcoes do picker de atividades

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
    
    // funcoes do picker de data
    
    func criarDatePicker() {
        
        //toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //bar button item
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector (doneApertado))
        toolbar.setItems([doneButton], animated: true)
        
        //anexa a toolbar aos textfields
        fieldInicio.inputAccessoryView = toolbar
        fieldFinal.inputAccessoryView = toolbar
        
        //anexa o datepicker aos textfields
        fieldInicio.inputView = datePicker
        fieldFinal.inputView = datePicker
    }
    
    func doneApertado() {
        
        // formatação da Data
        let formatoData = DateFormatter()
        formatoData.dateFormat = "dd/MM/yyyy"
        print(formatoData.string(from: datePicker.date))
        
        // grava a data no textfield
        fieldInicio.text = formatoData.string(from: datePicker.date)

        self.view.endEditing(false)
    }
    
    /*
    // função que finaliza a primeira etapa de criacao da atividade
    @IBAction func avancarPressionado(_ sender: Any) {
        ativ01.atividadeNome = nomeAtividade.text
        ativ01.atividadeDescricao = descricaoAtividade.text
        ativ01.atividadeInicio = fieldInicio.text
        ativ01.atividadeEntrega = fieldFinal.text
        ativ01.atividadeTipo = tipoAtividade.text
    } */
}
