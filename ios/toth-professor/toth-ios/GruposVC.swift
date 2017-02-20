//
//  GruposVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 18/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class GruposVC: UIViewController {

    @IBOutlet weak var scrollGrupos: UIScrollView!
    
    var gruposProfessor = [GrupoProfessor]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let b1 = GrupoProfessor(imgGroupPreview: "atividade.png", titleGroup: "btn1")
        let b3 = GrupoProfessor(imgGroupPreview: "atividade.png", titleGroup: "btn2")
        let b2 = GrupoProfessor(imgGroupPreview: "atividade.png", titleGroup: "btn3")
        
        gruposProfessor.append(b1)
        gruposProfessor.append(b2)
        gruposProfessor.append(b3)
        
       // scrollGrupos.add
    }


}
