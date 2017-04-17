//
//  GrupoCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 03/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class GrupoCell: UICollectionViewCell {
    
    @IBOutlet weak var grupoImgPreview: UIImageView!
    @IBOutlet weak var grupoNome: UILabel!
    
    
    func updateGrupoUI(Grupo: GrupoProfessor){
        grupoImgPreview.image = UIImage(named:Grupo.imgGroupPreview)
        grupoImgPreview.layer.cornerRadius = grupoImgPreview.frame.size.width/2
        grupoNome.text = Grupo.titleGroup
    }
}
