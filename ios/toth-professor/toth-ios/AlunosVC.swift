//
//  AlunosVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 05/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class AlunosVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var listaAlunos = [Aluno]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...10{
            listaAlunos.append(Aluno(alunoNome: "Aluno \(i)", alunoImg: "dani_teste", alunoStatus: "Online"))
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AlunoCell", for: indexPath) as? AlunoCell{
           
            let alunoCell = listaAlunos[indexPath.row]
            
            cell.updateAlunoUI(Aluno: alunoCell)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAlunos.count
    }
  
    

    
}
