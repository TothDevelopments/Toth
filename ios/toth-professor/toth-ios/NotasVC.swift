//
//  NotasVC.swift
//  toth-ios
//
//  Created by Andre Rosa on 07/03/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit

class NotasVC: UIViewController {

    
    @IBOutlet weak var segmentedCtrl: UISegmentedControl!
    @IBOutlet weak var contentView1: UIView!
    @IBOutlet weak var contentView2: UIView!
    @IBOutlet weak var contentView3: UIView!
    @IBOutlet weak var contentView4: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Notas"
        
        contentView1.isHidden = false
        contentView2.isHidden = true
        contentView3.isHidden = true
        contentView4.isHidden = true
        
    }


    @IBAction func segmentChange(_ sender: Any) {
        switch segmentedCtrl.selectedSegmentIndex{

        case 0:
            contentView1.isHidden = false
            contentView2.isHidden = true
            contentView3.isHidden = true
            contentView4.isHidden = true
        case 1:
            contentView1.isHidden = true
            contentView2.isHidden = false
            contentView3.isHidden = true
            contentView4.isHidden = true
        case 2:
            contentView1.isHidden = true
            contentView2.isHidden = true
            contentView3.isHidden = false
            contentView4.isHidden = true
        case 3:
            contentView1.isHidden = true
            contentView2.isHidden = true
            contentView3.isHidden = true
            contentView4.isHidden = false
        default:
            break;
        }
    }
 
    
}
