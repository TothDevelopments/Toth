//
//  TarefaCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class TarefaCell: UITableViewCell {

    @IBOutlet weak var tarefaNota: UILabel!
    @IBOutlet weak var tarefaNotaImg: UIImageView!
    @IBOutlet weak var tarefaTitulo: UILabel!
    @IBOutlet weak var tarefaEntrega: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateTarefaUI(Tarefa: Tarefa){
        tarefaNota.text = Tarefa.tarefaNota
        tarefaNotaImg.image = UIImage(named: Tarefa.tarefaImg)
        tarefaTitulo.text = Tarefa.tarefaTitulo
        tarefaEntrega.text = Tarefa.tarefaEntrega
    }


}
