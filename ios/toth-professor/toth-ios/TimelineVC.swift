//
//  TimelineVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 15/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class TimelineVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var ativAbertas = [AtivAbertaTimeline]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = AtivAbertaTimeline(ativImgPreview: "a1", ativTitle: "Tarefa Romantismo", ativDetails: "Detalhes sobre a tarefa", ativTimeLeft: "Restam 2 dias")
        let p2 = AtivAbertaTimeline(ativImgPreview: "a1", ativTitle: "Tarefa Realismo", ativDetails: "Detalhes sobre a tarefa", ativTimeLeft: "Restam 5 dias")
        let p3 = AtivAbertaTimeline(ativImgPreview: "a1", ativTitle: "Tarefa Trovadorismo", ativDetails: "Detalhes sobre a tarefa", ativTimeLeft: "Restam 8 dias")
        let p4 = AtivAbertaTimeline(ativImgPreview: "a1", ativTitle: "Tarefa Naturalismo", ativDetails: "Detalhes sobre a tarefa", ativTimeLeft: "Restam 12 dias")
        let p5 = AtivAbertaTimeline(ativImgPreview: "a1", ativTitle: "Tarefa Comtemporaneo", ativDetails: "Detalhes sobre a tarefa", ativTimeLeft: "Restam 22 dias")
        
        ativAbertas.append(p1)
        ativAbertas.append(p2)
        ativAbertas.append(p3)
        ativAbertas.append(p4)
        ativAbertas.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AtivAbertaCell", for: indexPath) as? AtivAbertaCell{
            
            let ativAberta = ativAbertas[indexPath.row]
            
            cell.UpdateUI(AtivAbertaTimeline: ativAberta)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ativAbertas.count
    }
    
}
