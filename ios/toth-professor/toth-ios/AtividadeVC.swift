//
//  AtividadeVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 22/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AtividadeVC: UIViewController {
    
    @IBOutlet weak var labelDescription: UITextView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDueTime: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var ativAbertas = [AtivAbertaTimeline]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = AtivAbertaTimeline(ativImgPreview: "a1", ativTitle: "Tarefa Matemática", ativDetails: "Detalhes sobre a tarefa: deverá ser entregue em papel ou impressão o exercício proposto na aula da última semana, não atrasem pois se não o pau vai comer! Grato desde já. Att.", ativTimeLeft: "Restam 5 dias")
        
        ativAbertas.append(p1)
        
        scrollView.contentSize.height = 700
        labelDescription.text = p1.ativDetails
        
       // scrollView.text = p1.ativDetails
        
    }
    
    @IBAction func buttonStart(_ sender: Any) {
    
    }
}
