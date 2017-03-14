//
//  NotasVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotasVC: UIViewController,UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!

    var atividadesAluno = [Atividade]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carregaAtividadeLista(atividade: "tarefa")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "NotaCell", for: indexPath) as? NotaCell{
            
            let atividadeCell = atividadesAluno[indexPath.row]
            
            cell.updateAtividadeUI(Atividade: atividadeCell)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return atividadesAluno.count
    }


    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        
        atividadesAluno.removeAll()
        
        switch segment.selectedSegmentIndex{
        case 0:
            carregaAtividadeLista(atividade: "tarefa")
        case 1:
            carregaAtividadeLista(atividade: "trabalho")
        case 2:
            carregaAtividadeLista(atividade: "prova")
        case 3:
            carregaAtividadeLista(atividade: "extras")
        default:
            break;
        }
        
        tableView.reloadData()
        
    }
  
    func carregaAtividadeLista(atividade: String){
        for i in 0...10{
            atividadesAluno.append(Atividade(atividadeNota: "\(i)", atividadeImg: "atividade.png", atividadeEntrega: "22 de Jan, 2016",atividadeTitulo: "\(atividade) \(i)"))
        }
        
    }
    

    
 
    
}
