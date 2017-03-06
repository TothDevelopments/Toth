//
//  AjustPerfilCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 02/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class MaisCell: UITableViewCell {

    @IBOutlet weak var imgPerfilPreview: UIImageView!
    @IBOutlet weak var nomePerfil: UILabel!
    
    @IBOutlet weak var imgCodSala: UIImageView!
    @IBOutlet weak var imgListaAlunos: UIImageView!
    @IBOutlet weak var imgNotas: UIImageView!
    @IBOutlet weak var imgAjuda: UIImageView!
    @IBOutlet weak var imgShare: UIImageView!
    @IBOutlet weak var imgSair: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgPerfilPreview.image = resizeImage(image: imgPerfilPreview.image!, newWidth: 60)
        imgPerfilPreview.layer.cornerRadius = 30
        
    
        imgCodSala.image = resizeImage(image: imgCodSala.image!, newWidth: 35)
        imgCodSala.layer.cornerRadius = 10

        imgListaAlunos.image = resizeImage(image: imgListaAlunos.image!, newWidth: 35)
        imgListaAlunos.layer.cornerRadius = 10
        
        imgNotas.image = resizeImage(image: imgNotas.image!, newWidth: 35)
        imgNotas.layer.cornerRadius = 10
        
        imgAjuda.image = resizeImage(image: imgAjuda.image!, newWidth: 35)
        imgAjuda.layer.cornerRadius = 10
        
        imgShare.image = resizeImage(image: imgShare.image!, newWidth: 35)
        imgShare.layer.cornerRadius = 10
        
        imgSair.image = resizeImage(image: imgSair.image!, newWidth: 35)
        imgSair.layer.cornerRadius = 10
        
      
    }


}
func resizeImage(image: UIImage, newWidth: CGFloat) -> UIImage {
    let scale = newWidth / image.size.width
    let newHeight = image.size.height * scale
    UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
    image.draw(in: CGRect(x: 0, y: 0,width: newWidth, height: newHeight))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage!
}
