//
//  GrupoProfessor.swift
//  toth-ios
//
//  Created by Andre Rosa on 18/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class GrupoProfessor{
    private var _imgGroupPreview: String!
    private var _titleGroup: String!
    
    var imgGroupPreview: String{
        return _imgGroupPreview
    }
    
    var titleGroup: String{
        return _titleGroup
    }
    
    init(imgGroupPreview: String, titleGroup: String){
        _imgGroupPreview = imgGroupPreview
        _titleGroup = titleGroup
    }
    
}
