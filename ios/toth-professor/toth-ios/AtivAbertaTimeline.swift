//
//  AtivAbertaTimeline.swift
//  toth-ios
//
//  Created by Andre Rosa on 15/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class AtivAbertaTimeline{
    private var _ativImgPreview: String!
    private var _ativTitle: String!
    private var _ativDetails: String!
    private var _ativTimeLeft: String!
    
    var ativImgPreview: String{
        return _ativImgPreview
    }
    
    var ativTitle: String{
        return _ativTitle
    }
    
    var ativDetails: String{
        return _ativDetails
    }
    
    var ativTimeLeft: String{
        return _ativTimeLeft
    }
    
    init(ativImgPreview: String, ativTitle: String, ativDetails: String, ativTimeLeft: String){
        _ativImgPreview = ativImgPreview
        _ativTitle = ativTitle
        _ativDetails = ativDetails
        _ativTimeLeft = ativTimeLeft
        
        
    }
    
}
