//
//  ViewController.swift
//  wave-check
//
//  Created by Keshav Tarafdar on 12/12/21.
//

import UIKit

class ViewController: UIViewController {

    // to get this line of code, open controller scene on one side, and view controller on other side
    // open all stack views, and then click on specific button
    // hold control and then click and drag into code, and give variable a name
    @IBOutlet weak var viewMapButton: UIButton!
    @IBOutlet weak var contributeDataButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // code to round button corners
        viewMapButton.layer.cornerRadius = 22
        contributeDataButton.layer.cornerRadius = 22
        
    }


}

