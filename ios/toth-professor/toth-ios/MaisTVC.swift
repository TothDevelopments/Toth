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

       self.tableView.tableFooterView = UIView(frame: .zero)
    }

}
