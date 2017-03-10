//
//  TarefasTVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 08/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotasExtrasTVC: UITableViewController {
    var notasExtrasAluno = [NotaExtra]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...10{
            
            notasExtrasAluno.append(NotaExtra(notaExtraNota: "\(i)", notaExtraImg: "atividade.png", notaExtraEntrega: "22 de Jan, 2016",notaExtraTitulo: "Nota Extra \(i)"))
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "NotaExtraCell", for: indexPath) as? NotaExtraCell{
            
            let notaExtraCell = notasExtrasAluno[indexPath.row]
            
              cell.updateNotaExtraUI(NotaExtra: notaExtraCell)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notasExtrasAluno.count
    }
    
    
}
