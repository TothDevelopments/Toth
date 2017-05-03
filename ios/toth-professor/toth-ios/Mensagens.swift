//
//  Mensagens.swift
//  toth-ios
//
//  Created by Danillo Lange on 03/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Mensagens {
    
    private var _texto: String!
    private var _horaMensagem: String!
    private var _remetente: String!
    
    var texto: String{
        return _texto
    }
    var horaMensagem: String{
        return _horaMensagem
    }
    var remetente: String{
        return _remetente
    }
    
    init (texto: String, horaMensagem: String, remetente: String){
        _texto = texto
        _horaMensagem = horaMensagem
        _remetente = remetente
    }
}
