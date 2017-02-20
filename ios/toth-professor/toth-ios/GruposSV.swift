//
//  GruposSV.swift
//  toth-ios
//
//  Created by Andre Rosa on 18/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class GruposSV: UIScrollView {

    @IBOutlet weak var btnGrupo: UIButton!
    @IBOutlet weak var labelBtnGrupo: UILabel!
    
    func updateBtnUI(grupoProfessor: GrupoProfessor){
        btnGrupo.setImage(UIImage(named: grupoProfessor.imgGroupPreview), for: UIControlState.normal)
        labelBtnGrupo.text = grupoProfessor.titleGroup
    }
    

}
