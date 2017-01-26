//
//  ViewController.swift
//  JudexExampleMac
//
//  Created by Junior B. on 26.01.17.
//  Copyright © 2017 Bonto.ch. All rights reserved.
//

import Cocoa
import JudexOSX

class ViewController: NSViewController {

    override func viewDidLoad() {
        if #available(OSX 10.10, *) {
            super.viewDidLoad()
        } else {
            // Fallback on earlier versions
        }

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func ratePressed(_ sender: Any) {
        Judex.shared.daysUntilPrompt = 0
        Judex.shared.usesUntilPrompt = 0
        Judex.shared.remindPeriod = -1.0
        Judex.shared.promptIfRequired()
    }

}

