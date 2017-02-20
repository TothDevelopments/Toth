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
    
    @IBAction func backBtnPress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var notificacoes = [Notificacao]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let b1 = Notificacao(notImgPreview: "atividade", notName: "Fulano", notDescription: "corrigiu sua prova", notTimeLeft: "há 3 horas")
        let b2 = Notificacao(notImgPreview: "atividade", notName: "Fulano2", notDescription: "corrigiu sua prova", notTimeLeft: "há 3 horas")
        let b3 = Notificacao(notImgPreview: "atividade", notName: "Fulano3", notDescription: "corrigiu sua prova", notTimeLeft: "há 3 horas")
        
        notificacoes.append(b1)
        notificacoes.append(b2)
        notificacoes.append(b3)
        
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
