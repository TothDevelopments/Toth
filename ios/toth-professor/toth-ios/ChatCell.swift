//
//  ChatCell.swift
//  toth-ios
//
//  Created by Danillo Lange on 03/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ChatCell: UITableViewCell {
    
    @IBOutlet weak var imagemFundo: UIImageView!
    @IBOutlet weak var mensagem: UILabel!
    @IBOutlet weak var horaMensagem: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateChatUI(Mensagem: Mensagens){
        imagemFundo.layer.cornerRadius = 12
        
        mensagem.text = Mensagem.texto
        horaMensagem.text = Mensagem.horaMensagem
    }
}
