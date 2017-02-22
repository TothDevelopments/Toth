//
//  Agenda.swift
//  toth-ios
//
//  Created by Andre Rosa on 21/02/17.
//  Copyright © 2017 Andre Rosa. All rights reserved.
//

import UIKit
import FSCalendar

class Agenda: UIViewController, UITableViewDelegate, FSCalendarDataSource, FSCalendarDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var calendar: FSCalendar!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = UIColor.groupTableViewBackground
        self.view = view
    
        calendar.scrollDirection = .vertical

    }

   

  

}
