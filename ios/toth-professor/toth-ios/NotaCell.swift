//
//  TarefaCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotaCell: UITableViewCell {

    @IBOutlet weak var nota: UILabel!
    @IBOutlet weak var notaImg: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var entrega: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateAtividadeUI(Atividade: Atividade){
        nota.text = Atividade.atividadeNota
        notaImg.image = UIImage(named: Atividade.atividadeImg)
        titulo.text = Atividade.atividadeTitulo
        entrega.text = Atividade.atividadeEntrega
    }


}
