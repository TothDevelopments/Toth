//
//  CriarAtividadeTVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 15/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
class CriarAtividadeTVC: UITableViewController, UIPickerViewDataSource,UIPickerViewDelegate  {

    
    @IBOutlet weak var pickerAtividades: UIPickerView!
    @IBOutlet weak var labelAtividadeTipo: UILabel!
    
    @IBOutlet weak var labelDuracao: UILabel!
    
    @IBOutlet weak var labelDiaAula: UILabel!

    @IBOutlet weak var comecaAtivLabel: UILabel!
    
    @IBOutlet weak var terminaAtivLabel: UILabel!
    
    let pickerData = [["Selecione","Plano de Aula", "Tarefa","Trabalho","Prova"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        pickerAtividades.delegate   = self
        pickerAtividades.dataSource = self
        
    }
    
    @IBAction func datePickerChanged(_ sender: UIDatePicker) {
        
        let pickerTag = sender.tag
        
        if pickerTag == 1{
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            let strDate = dateFormatter.string(from: sender.date)
            self.labelDuracao.text = strDate
            
        } else if pickerTag == 2{
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE, dd MMM yyyy"
            let strDate = dateFormatter.string(from: sender.date)
            self.labelDiaAula.text = strDate
            
        } else if pickerTag == 3{
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd MMM yyyy, HH:mm"
            let strDate = dateFormatter.string(from: sender.date)
            self.comecaAtivLabel.text = strDate
   
        } else if pickerTag == 4{
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd MMM yyyy, HH:mm"
            let strDate = dateFormatter.string(from: sender.date)
            self.terminaAtivLabel.text = strDate
            
        }
    }
    
    @IBAction func diaInteiroSwitch(_ sender: Any) {
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 44.0
    }
    
    /* Configuracao dos pickerViews */
    
    func updatePickerLabel(){
        let atividade = pickerData[0][pickerAtividades.selectedRow(inComponent: 0)]
        labelAtividadeTipo.text = atividade
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        updatePickerLabel()
    }
    
     /* ! Configuracao dos pickerViews */
    
    
    /* Configuracao das expandable cells */
    
      
    /* ! Configuracao das expandable cells */
    
    
}
