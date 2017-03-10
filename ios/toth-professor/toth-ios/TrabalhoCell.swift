//
//  TarefaCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class TrabalhoCell: UITableViewCell {
    
    @IBOutlet weak var trabalhoNota: UILabel!
    @IBOutlet weak var trabalhoNotaImg: UIImageView!
    @IBOutlet weak var trabalhoTitulo: UILabel!
    @IBOutlet weak var trabalhoEntrega: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateTrabalhoUI(Trabalho: Trabalho){
        print("entrou")
       // trabalhoNota.text = Trabalho.trabalhoNota
        //trabalhoNotaImg.image = UIImage(named: Trabalho.trabalhoImg)
        //trabalhoTitulo.text = Trabalho.trabalhoTitulo
//trabalhoEntrega.text = Trabalho.trabalhoEntrega
    }
    
    
}
