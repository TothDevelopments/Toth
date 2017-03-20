//
//  EntregaCell.swift
//  toth-ios
//
//  Created by Danillo Lange on 16/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class EntregaCell: UITableViewCell {
    
    @IBOutlet weak var alunoNome: UILabel!
    @IBOutlet weak var alunoStatus: UILabel!
    @IBOutlet weak var alunoImgPreview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateAlunoUI(Aluno: Aluno){
        
        alunoImgPreview.image = UIImage(named: Aluno.alunoImg)
        
        alunoImgPreview.image = resizeImage(image: alunoImgPreview.image!, newWidth: 40)
        alunoImgPreview.layer.cornerRadius = 20
        
        alunoNome.text = Aluno.alunoNome
        alunoStatus.text = Aluno.alunoStatus
    }
}
