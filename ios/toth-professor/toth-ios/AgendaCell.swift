//
//  TableViewCell.swift
//  toth-ios
//
//  Created by Andre Rosa on 22/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AgendaCell: UITableViewCell {

   
    @IBOutlet weak var imgAgendaCell: UIImageView!
    @IBOutlet weak var tituloAgendaCell: UILabel!
    @IBOutlet weak var resumoAgendaCell: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateAgendaUI(Agenda: Agenda){
        imgAgendaCell.image = UIImage(named: Agenda.imgPreviewCell)
        tituloAgendaCell.text = Agenda.titleAgendaCell
        resumoAgendaCell.text = Agenda.resumoAgendaCell
    }

}
