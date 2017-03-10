
import Foundation

class Trabalho{
    private var _trabalhoNota: String!
    private var _trabalhoImg: String!
    private var _trabalhoEntrega: String!
    private var _trabalhoTitulo: String!
    
    var trabalhoNota: String{
        return _trabalhoNota
    }
    var trabalhoImg: String{
        return _trabalhoImg
    }
    var trabalhoEntrega: String{
        return _trabalhoEntrega
    }
    var trabalhoTitulo: String{
        return _trabalhoTitulo
    }
    
    init (trabalhoNota: String, trabalhoImg: String, trabalhoEntrega: String, trabalhoTitulo: String){
        _trabalhoNota    = trabalhoNota
        _trabalhoImg     = trabalhoImg
        _trabalhoEntrega = trabalhoEntrega
        _trabalhoTitulo  = trabalhoTitulo
    }
    
}
