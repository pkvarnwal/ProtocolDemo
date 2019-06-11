//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by Prinsu Kumar on 16/05/19.
//  Copyright © 2019 bafflesol. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, MyDataSendingDelegateProtocol {
    

    @IBOutlet weak var label: UILabel!
    
    @IBAction func next(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc?.delegate = self
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func sendDataToFirstViewController(myData: String) {
        self.label.text = myData
    }
}

