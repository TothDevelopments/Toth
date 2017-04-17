//
//  AlunoCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 05/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AlunoCell: UITableViewCell {

    @IBOutlet weak var alunoImgPreview: UIImageView!
    @IBOutlet weak var alunoNome: UILabel!
    @IBOutlet weak var alunoStatus: UILabel!
    
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
