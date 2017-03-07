//
//  Atividade.swift
//  toth-ios
//
//  Created by Danillo Lange on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Atividade{
    
    private var _atividadeNome: String!
    private var _atividadeDescricao: String!
    private var _atividadeImg: String!
    private var _atividadeEntrega: String!
    
    var atividadeNome: String{
        return _atividadeNome
    }
    
    var atividadeDescricao: String{
        return _atividadeDescricao
    }
    
    var atividadeImg: String{
        return _atividadeImg
    }
    
    var atividadeEntrega: String{
        return _atividadeEntrega
    }
    
    init (atividadeNome: String, atividadeImg: String, atividadeDescricao: String, atividadeEntrega: String){
        
        _atividadeNome   = atividadeNome
        _atividadeDescricao  = atividadeDescricao
        _atividadeImg = atividadeImg
        _atividadeEntrega = atividadeEntrega
    }
    
    init ()
    {
        
    }
}
