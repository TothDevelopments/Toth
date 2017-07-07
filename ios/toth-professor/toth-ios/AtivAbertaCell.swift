//
//  AtivAbertaCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 15/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AtivAbertaCell: UITableViewCell {

    
    @IBOutlet weak var AtivPreviewImage: UIImageView!
    @IBOutlet weak var AtivTitulo: UILabel!
    @IBOutlet weak var AtivResumo: UILabel!
    @IBOutlet weak var AtivTimeLeft: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

//    func UpdateUI(AtivAbertaTimeline: AtivAbertaTimelinpe){
//        AtivPreviewImage.image = UIImage(named: AtivAbertaTimeline.ativImgPreview)
//        AtivTitulo.text = AtivAbertaTimeline.ativTitle
//        AtivResumo.text = AtivAbertaTimeline.ativDetails
//        AtivTimeLeft.text = AtivAbertaTimeline.ativTimeLeft
//    }

}
