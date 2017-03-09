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
    
    var listaAtividades = Atividade()
    
    var date = NSDate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaAtividades = Atividade(atividadeNome: "Atividade 1", atividadeImg: "dani_teste", atividadeInicio: "20/02/2017", atividadeDescricao: "Esta atividade é essencial para o seu desenvolvimento profissional, social e pessoal.", atividadeEntrega: "23/03/2017", atividadeTempo: "50", atividadeTipo: "Tarefa")
        
        //imgAtividade = listaAtividades.atividadeImg
        
        nomeAtividade.text = listaAtividades.atividadeNome
        entregaAtividade.text = listaAtividades.atividadeEntrega
        descricaoAtividade.text = listaAtividades.atividadeDescricao
        tempoAtividade.text = listaAtividades.atividadeTempo
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
