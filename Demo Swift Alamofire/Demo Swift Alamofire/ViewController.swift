//
//  ViewController.swift
//  Demo Swift Alamofire
//
//  Created by Joel on 9/27/17.
//  Copyright © 2017 JoelParkerHenderson.com. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var demoTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://httpbin.org/get")
            .validate()
            .responseString { response in
                self.demoTextView.text = response.result.value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

