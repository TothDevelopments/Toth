//
//  NotificacaoCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 18/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotificacaoCell: UITableViewCell {

    @IBOutlet weak var NotTimeLeft: UILabel!
    @IBOutlet weak var NotTitle: UILabel!
    @IBOutlet weak var NotPreviewImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateNotificacaoUI(Notificacao: Notificacao){
     //   NotPreviewImg.image = UIImage(named: Notificacao.notImgPreview)
        NotTitle.text = Notificacao.notName + Notificacao.notDescription
        NotTimeLeft.text = Notificacao.notTimeLeft
    }
    
}
