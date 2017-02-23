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

    //@IBOutlet weak var calendar: FSCalendar!
    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize.height = 700
      //  calendar.clipsToBounds = true
      //  calendar.scope = .month
    }

}
