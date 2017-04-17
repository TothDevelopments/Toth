//
//  File.swift
//  toth-ios
//
//  Created by Andre Rosa on 05/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import Foundation

class Aluno{
    private var _alunoNome: String!
    private var _alunoImg: String!
    private var _alunoStatus: String!
    
    var alunoNome: String{
       return _alunoNome
    }
    var alunoImg: String{
        return _alunoImg
    }
    var alunoStatus: String{
        return _alunoStatus
    }
    
    init (alunoNome: String, alunoImg: String, alunoStatus: String){
        _alunoNome   = alunoNome
        _alunoImg    = alunoImg
        _alunoStatus = alunoStatus
    }
    
}
