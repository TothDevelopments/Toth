//
//  TextCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 24/04/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import Eureka



final class TextoCell: Cell<User>, CellType {

    @IBOutlet weak var perguntaText: UITextField!
    @IBOutlet weak var respostaBox: UITextView!
    @IBOutlet weak var anexarFotoBtn: UIButton!
    @IBOutlet weak var maisOpcoesBtn: UIButton!
    @IBOutlet weak var obrigatorioSwitch: UISwitch!
    @IBOutlet weak var deleteCellBtn: UIButton!
    
    
    required init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public override func setup() {
        super.setup()
    }
    
    override func update() {
        super.update()
        // get the value from our row
        guard row.value != nil else { return }
        
    }
}


final class TextoRow: Row<TextoCell>, RowType {
    required init(tag: String?) {
        super.init(tag: tag)
        cellProvider = CellProvider<TextoCell>(nibName: "TextoCell")
    }
}


struct User: Equatable {
    var name: String
    var email: String
    var dateOfBirth: NSDate
    var pictureUrl: NSURL?
}

func ==(lhs: User, rhs: User) -> Bool {
    return lhs.email == rhs.email
}
