//
//  TarefasTVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 08/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class TarefasTVC: UITableViewController {
    var tarefasAluno = [Tarefa]()
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...10{
            
            tarefasAluno.append(Tarefa(tarefaNota: "\(i)", tarefaImg: "atividade.png", tarefaEntrega: "22 de Jan, 2016",tarefaTitulo: "Tarefa \(i)"))
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TarefaCell", for: indexPath) as? TarefaCell{
    
            let tarefaCell = tarefasAluno[indexPath.row]
    
            cell.updateTarefaUI(Tarefa: tarefaCell)

            return cell

        } else{
            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefasAluno.count
    }


}
