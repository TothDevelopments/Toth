
import Foundation

class NotaExtra{
    private var _notaExtraNota: String!
    private var _notaExtraImg: String!
    private var _notaExtraEntrega: String!
    private var _notaExtraTitulo: String!
    
    var notaExtraNota: String{
        return _notaExtraNota
    }
    var notaExtraImg: String{
        return _notaExtraImg
    }
    var notaExtraEntrega: String{
        return _notaExtraEntrega
    }
    var notaExtraTitulo: String{
        return _notaExtraTitulo
    }
    
    init (notaExtraNota: String, notaExtraImg: String, notaExtraEntrega: String, notaExtraTitulo: String){
        _notaExtraNota    = notaExtraNota
        _notaExtraImg     = notaExtraImg
        _notaExtraEntrega = notaExtraEntrega
        _notaExtraTitulo  = notaExtraTitulo
    }
    
}
