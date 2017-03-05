//
//  ViewController.swift
//  flask-test
//
//  Created by Tyler Angert on 3/5/17.
//  Copyright © 2017 Tyler Angert. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var fetchDataButton: UIButton!
    @IBOutlet weak var dataLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func fetchData(_ sender: Any) {
        let r = Just.get("https://flask-test-1.herokuapp.com/post-test")
        if r.ok && r.statusCode == 200 {
            let json = JSON(r.json!)
            self.dataLabel.text = json["data"].string
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

