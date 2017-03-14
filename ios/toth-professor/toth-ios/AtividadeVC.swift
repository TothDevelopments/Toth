//
//  AtividadeVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 06/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AtividadeVC: UIViewController {
    
    @IBOutlet weak var imgAtividade: UIImageView!
    
    @IBOutlet weak var nomeAtividade: UILabel!
    
    @IBOutlet weak var entregaAtividade: UILabel!
    
    @IBOutlet weak var tempoAtividade: UILabel!
    
    @IBOutlet weak var descricaoAtividade: UITextView!
    
    var date = NSDate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //imgAtividade = listaAtividades.atividadeImg
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
