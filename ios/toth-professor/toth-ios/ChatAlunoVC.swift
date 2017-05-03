//
//  ChatAlunoVC.swift
//  toth-ios
//
//  Created by Danillo Lange on 02/05/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class ChatAlunoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mensagensChat = [Mensagens]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...8{
            mensagensChat.append(Mensagens(texto: "Olá \(i)!", horaMensagem: "0\(i+1):0\(i+1)", remetente: "Aluno \(i)"))
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.title = "Chat"

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row % 2 == 0 {
            
            if let cellChat = tableView.dequeueReusableCell(withIdentifier: "ChatCellLocal", for: indexPath) as? ChatCell {
                
                let chatCell = mensagensChat[indexPath.row]
                
                cellChat.updateChatUI(Mensagem: chatCell)
                
                return cellChat
                
            }
            
        } else if indexPath.row % 2 != 0 {
            
            if let cellChat = tableView.dequeueReusableCell(withIdentifier: "ChatCellRemote", for: indexPath) as? ChatCell {
                
                let chatCell = mensagensChat[indexPath.row]
                
                cellChat.updateChatUI(Mensagem: chatCell)
                
                return cellChat
                
            }
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mensagensChat.count
    }

}
