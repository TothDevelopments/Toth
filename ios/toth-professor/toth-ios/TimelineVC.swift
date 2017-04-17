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
        
        for i in 0...10{
            ativAbertas.append(AtivAbertaTimeline(ativImgPreview: "atividade", ativTitle: "Tarefa numero \(i)", ativDetails: "Detalhes sobre a tarefa numero \(i)", ativTimeLeft: "Restam \(i) dias"))
            
        }

        self.automaticallyAdjustsScrollViewInsets = false
        
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
