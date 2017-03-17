//
//  AlunoPerfilCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 16/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AlunoPerfilCell: UITableViewCell {

    @IBOutlet weak var imgPerfilPreview: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        imgPerfilPreview.image = resizePerfilImage(image: imgPerfilPreview.image!, newWidth: 60)
        imgPerfilPreview.layer.cornerRadius = 30
        
        
    }

   
}


func resizePerfilImage(image: UIImage, newWidth: CGFloat) -> UIImage {
    let scale = newWidth / image.size.width
    let newHeight = image.size.height * scale
    UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
    image.draw(in: CGRect(x: 0, y: 0,width: newWidth, height: newHeight))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage!
}
