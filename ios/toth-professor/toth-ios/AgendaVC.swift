//
//  Agenda.swift
//  toth-ios
//
//  Created by Andre Rosa on 21/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import FSCalendar

class AgendaVC: UIViewController, UITableViewDelegate, UITableViewDataSource, FSCalendarDataSource, FSCalendarDelegate, UIGestureRecognizerDelegate {


    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableView: UITableView!

    var agendaCells = [Agenda]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        
        for i in 0...10{
            agendaCells.append(Agenda(imgPreviewCell: "atividade", titleAgendaCell: "Plano de Aula \(i)", resumoAgendaCell: "Resumo da agenda cell para a aula \(i)"))
            
        }
        
        scrollView.contentSize.height = 700
        calendar.clipsToBounds = true
   
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AgendaCell", for: indexPath) as? AgendaCell{
          
            let agendaCell = agendaCells[indexPath.row]
            
            cell.updateAgendaUI(Agenda: agendaCell)
            
            return cell
        } else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agendaCells.count
    }
    
    
    
}
