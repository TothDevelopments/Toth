//
//  Agenda.swift
//  toth-ios
//
//  Created by Andre Rosa on 22/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Agenda{
    private var _imgPreviewCell: String!
    private var _titleAgendaCell: String!
    private var _resumoAgendaCell: String!
    
    var imgPreviewCell: String {
        return _imgPreviewCell
    }
    
    var titleAgendaCell: String!{
        return _titleAgendaCell
    }
    
    var resumoAgendaCell: String{
        return _resumoAgendaCell
    }
    
    init(imgPreviewCell: String, titleAgendaCell: String, resumoAgendaCell: String){
        _imgPreviewCell   = imgPreviewCell
        _titleAgendaCell  = titleAgendaCell
        _resumoAgendaCell = resumoAgendaCell
    }
    
}
