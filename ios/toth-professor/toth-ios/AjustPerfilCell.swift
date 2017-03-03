//
//  AjustPerfilCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 02/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AjustPerfilCell: UITableViewCell {

    @IBOutlet weak var imgPerfilPreview: UIImageView!
    @IBOutlet weak var nomePerfil: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgPerfilPreview.layer.cornerRadius = imgPerfilPreview.frame.size.width/2
        
    }


}
