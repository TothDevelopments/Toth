//
//  TarefaCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ProvaCell: UITableViewCell {
    
    @IBOutlet weak var provaNota: UILabel!
    @IBOutlet weak var provaNotaImg: UIImageView!
    @IBOutlet weak var provaTitulo: UILabel!
    @IBOutlet weak var provaEntrega: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateProvaUI(Prova: Prova){
        provaNota.text = Prova.provaNota
        provaNotaImg.image = UIImage(named: Prova.provaImg)
        provaTitulo.text = Prova.provaTitulo
        provaEntrega.text = Prova.provaEntrega
    }
    
    
}
