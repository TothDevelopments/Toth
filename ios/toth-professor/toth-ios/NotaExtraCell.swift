//
//  TarefaCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotaExtraCell: UITableViewCell {
    
    @IBOutlet weak var notaExtraNota: UILabel!
    @IBOutlet weak var notaExtraNotaImg: UIImageView!
    @IBOutlet weak var notaExtraTitulo: UILabel!
    @IBOutlet weak var notaExtraEntrega: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateNotaExtraUI(NotaExtra: NotaExtra){
        notaExtraNota.text = NotaExtra.notaExtraNota
        notaExtraNotaImg.image = UIImage(named: NotaExtra.notaExtraImg)
        notaExtraTitulo.text = NotaExtra.notaExtraTitulo
        notaExtraEntrega.text = NotaExtra.notaExtraEntrega
    }

}
