//
//  Atividade.swift
//  toth-ios
//
//  Created by Danillo Lange on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Atividade{
    
    // propriedades de uma atividade
    private var _atividadeNome: String!
    private var _atividadeDescricao: String!
    private var _atividadeImg: String!
    private var _atividadeInicio: String!
    private var _atividadeEntrega: String!
    private var _atividadeTempo: String!
    private var _atividadeTipo: String!
    
    var atividadeNome: String{
        return _atividadeNome
    }
    
    var atividadeDescricao: String{
        return _atividadeDescricao
    }
    
    var atividadeImg: String{
        return _atividadeImg
    }
    
    var atividadeInicio: String{
        return _atividadeInicio
    }
    
    var atividadeEntrega: String{
        return _atividadeEntrega
    }
    
    var atividadeTempo: String{
        return _atividadeTempo
    }
    
    var atividadeTipo: String{
        return _atividadeTipo
    }
    
    init (atividadeNome: String, atividadeImg: String, atividadeInicio: String, atividadeDescricao: String, atividadeEntrega: String, atividadeTempo: String, atividadeTipo: String){
        
        _atividadeNome   = atividadeNome
        _atividadeDescricao  = atividadeDescricao
        _atividadeImg = atividadeImg
        _atividadeInicio = atividadeInicio
        _atividadeEntrega = atividadeEntrega
        _atividadeTempo = atividadeTempo
        _atividadeTipo = atividadeTipo
    }
    
    init () {
        
    }
}
