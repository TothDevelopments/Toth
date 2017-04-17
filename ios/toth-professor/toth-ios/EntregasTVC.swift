//
//  EntregasTVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 16/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class EntregasTVC: UITableViewController {

    let secoes = ["Entregou", "Não entregou"]
    var listaAlunos: [Array<Aluno>] = [[], []]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...5{
            listaAlunos[0].append(Aluno(alunoNome: "Aluno \(i)", alunoImg: "dani_teste", alunoStatus: "Online"))
        }
        
        for i in 6...10{
            listaAlunos[1].append(Aluno(alunoNome: "Aluno \(i)", alunoImg: "dani_teste", alunoStatus: "Online"))
        }
        
        self.title = "Entregas"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cellEntrega = tableView.dequeueReusableCell(withIdentifier: "EntregaCell", for: indexPath) as? EntregaCell {
            
            let entregaCell = listaAlunos[indexPath.section][indexPath.row]
            
            cellEntrega.updateAlunoUI(Aluno: entregaCell)
            
            return cellEntrega
            
        } else {
            return UITableViewCell()
        }
    }
    
    
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAlunos[section].count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.secoes.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.secoes[section]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
