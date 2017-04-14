//
//  NotificacoesVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 18/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotificacoesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var notificacoes = [Notificacao]()
    
    @IBAction func backBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in 0...10{
            notificacoes.append(Notificacao(notImgPreview: "atividade", notName: "O Professor \(i)", notDescription: "fez a correção da atividade numero \(i)", notTimeLeft: "há \(i) horas"))
        }
        
       
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "NotificacaoCell", for: indexPath) as? NotificacaoCell{
            
            let notificacao = notificacoes[indexPath.row]
            
            cell.updateNotificacaoUI(Notificacao: notificacao)
            
            return cell
            
        } else{
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificacoes.count
    }
    
    

}
