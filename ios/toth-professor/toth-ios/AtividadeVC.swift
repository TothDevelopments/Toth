//
//  AtividadeVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 22/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AtividadeVC: UIViewController {
    
    @IBOutlet weak var buttonStart: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDueDate: UILabel!
    @IBOutlet weak var labelDescription: UITextView!
    @IBOutlet weak var labelTime: UILabel!
    
    var ativAbertas = [AtivAbertaTimeline]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = AtivAbertaTimeline(ativImgPreview: "a1", ativTitle: "Tarefa Matemática", ativDetails: "Detalhes sobre a tarefa: deverá ser entregue em papel ou impressão o exercício proposto na aula da última semana.", ativTimeLeft: "Restam 5 dias")
        
        labelTitle.text = p1.ativTitle
        labelDueDate.text = p1.ativTimeLeft
        labelDescription.text = p1.ativDetails
        
        ativAbertas.append(p1)
        
    }
    
    @IBAction func buttonStart(_ sender: Any) {
    
    }
}
