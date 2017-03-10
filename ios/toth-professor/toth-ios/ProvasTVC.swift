//
//  TarefasTVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 08/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ProvasTVC: UITableViewController {
    var provasAlunos = [Prova]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...10{
            
            provasAlunos.append(Prova(provaNota: "\(i)", provaImg: "atividade.png", provaEntrega: "22 de Jan, 2016",provaTitulo: "Prova \(i)"))
        }
        
        self.tableView.delegate = self
        self.tableView.dataSource = self

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ProvaCell", for: indexPath) as? ProvaCell{
            
            let provaCell = provasAlunos[indexPath.row]
            
               cell.updateProvaUI(Prova: provaCell)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return provasAlunos.count
    }
    
    
}
