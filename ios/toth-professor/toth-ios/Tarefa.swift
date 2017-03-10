//
//  File.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Tarefa{
    private var _tarefaNota: String!
    private var _tarefaImg: String!
    private var _tarefaEntrega: String!
    private var _tarefaTitulo: String!
    
    var tarefaNota: String{
        return _tarefaNota
    }
    var tarefaImg: String{
        return _tarefaImg
    }
    var tarefaEntrega: String{
        return _tarefaEntrega
    }
    var tarefaTitulo: String{
        return _tarefaTitulo
    }
    
    init (tarefaNota: String, tarefaImg: String, tarefaEntrega: String, tarefaTitulo: String){
        _tarefaNota    = tarefaNota
        _tarefaImg     = tarefaImg
        _tarefaEntrega = tarefaEntrega
        _tarefaTitulo  = tarefaTitulo
    }
    
}
