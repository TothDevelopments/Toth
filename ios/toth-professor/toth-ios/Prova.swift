
import Foundation

class Prova{
    private var _provaNota: String!
    private var _provaImg: String!
    private var _provaEntrega: String!
    private var _provaTitulo: String!
    
    var provaNota: String{
        return _provaNota
    }
    var provaImg: String{
        return _provaImg
    }
    var provaEntrega: String{
        return _provaEntrega
    }
    var provaTitulo: String{
        return _provaTitulo
    }
    
    init (provaNota: String, provaImg: String, provaEntrega: String, provaTitulo: String){
        _provaNota    = provaNota
        _provaImg     = provaImg
        _provaEntrega = provaEntrega
        _provaTitulo  = provaTitulo
    }
    
}
