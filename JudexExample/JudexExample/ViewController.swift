//
//  ViewController.swift
//  JudexExample
//
//  Created by Junior B. on 25.01.17.
//  Copyright © 2017 Bonto.ch. All rights reserved.
//

import UIKit
import Judex

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ratePressedxx(_ sender: Any) {
        Judex.shared.daysUntilPrompt = 0
        Judex.shared.usesUntilPrompt = 0
        Judex.shared.remindPeriod = -1.0
        Judex.shared.promptIfRequired()
    }

}

