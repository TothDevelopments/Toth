//
//  descAtividade.swift
//  toth-ios
//
//  Created by Andre Rosa on 15/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class descAtividade: UITableViewController {

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
