//
//  MaisTVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 05/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class MaisTVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
       // performSegue(withIdentifier: "listaAlunosSG", sender: self)
    }

}
