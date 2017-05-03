//
//  DescAtividadeTVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 23/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class DescAtividadeTVC: UITableViewController {

   
    @IBAction func editarBtnPress(_ sender: Any) {
      //  performSegue(withIdentifier: "editarAtividade", sender: self)
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let controller = storyboard.instantiateViewController(withIdentifier: "criarAtividade")
//        self.present(controller, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}
