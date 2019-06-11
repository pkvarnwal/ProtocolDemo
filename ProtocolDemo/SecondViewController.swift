//
//  SecondViewController.swift
//  ProtocolDemo
//
//  Created by Prinsu Kumar on 16/05/19.
//  Copyright © 2019 bafflesol. All rights reserved.
//

import UIKit

protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}

class SecondViewController: UIViewController {

    var delegate: MyDataSendingDelegateProtocol?
    
    @IBOutlet weak var dataToSendTextField: UITextField!
    
    @IBAction func submit(_ sender: Any) {
        let isValue = !(dataToSendTextField.text ?? "").isEmpty
        
        guard let delegate = delegate, isValue else { return }
        delegate.sendDataToFirstViewController(myData: dataToSendTextField.text ?? "")
        navigationController?.popViewController(animated: true)
    }
}
