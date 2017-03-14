//
//  Agenda.swift
//  toth-ios
//
//  Created by Andre Rosa on 22/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//import Foundation

class Atividade{
    private var _atividadeNota: String!
    private var _atividadeImg: String!
    private var _atividadeEntrega: String!
    private var _atividadeTitulo: String!
    
    var atividadeNota: String{
        return _atividadeNota
    }
    var atividadeImg: String{
        return _atividadeImg
    }
    var atividadeEntrega: String{
        return _atividadeEntrega
    }
    var atividadeTitulo: String{
        return _atividadeTitulo
    }
    
    init (atividadeNota: String, atividadeImg: String, atividadeEntrega: String, atividadeTitulo: String){
        _atividadeNota    = atividadeNota
        _atividadeImg     = atividadeImg
        _atividadeEntrega = atividadeEntrega
        _atividadeTitulo  = atividadeTitulo
    }
    
}
