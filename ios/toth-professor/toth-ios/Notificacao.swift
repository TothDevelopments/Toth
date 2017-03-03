//
//  Notificacao.swift
//  toth-ios
//
//  Created by Andre Rosa on 18/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Notificacao{
    private var _notImgPreview: String!
    private var _notName: String!
    private var _notDescription: String!
    private var _notTimeLeft: String!
    
    var notImgPreview: String{
        return _notImgPreview
    }
    
    var notName: String{
        return _notName
    }
    
    var notDescription: String{
        return _notDescription
    }
    
    var notTimeLeft: String{
        return _notTimeLeft
    }
    
    init(notImgPreview: String, notName: String, notDescription: String, notTimeLeft: String){
        _notImgPreview = notImgPreview
        _notName = notName
        _notDescription = notDescription
        _notTimeLeft = notTimeLeft
    }
    
}
