//
//  TarefasTVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 08/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class TrabalhosTVC: UITableViewController {
    var trabalhosAluno = [Trabalho]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...10{
            
            
            trabalhosAluno.append(Trabalho(trabalhoNota: "\(i)", trabalhoImg: "atividade.png", trabalhoEntrega: "", trabalhoTitulo: "Trabalho \(i)"))
            
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TrabalhoCell", for: indexPath) as? TrabalhoCell{
            
            let trabalhoCell = trabalhosAluno[indexPath.row]
            
               cell.updateTrabalhoUI(Trabalho: trabalhoCell)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trabalhosAluno.count
    }
    
    
}
