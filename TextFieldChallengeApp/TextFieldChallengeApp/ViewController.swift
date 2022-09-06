//
//  ViewController.swift
//  TextFieldChallengeApp
//
//  Created by Justin Bengtson on 9/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var lockSwitchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipCodeTextField.delegate = ZipCodeTextFieldDelegate()
        cashTextField.delegate = CashFieldTextDelegate()
        lockableTextField.delegate = LockableTextFieldDelegate()
        setupUI()
    }
    
    private func setupUI() {
        lockableTextField.isEnabled = lockSwitchButton.isOn
        cashTextField.text = "$0.00"
    }
    
    @IBAction func lockSwitchAction(_ sender: Any) {
        lockableTextField.isEnabled = lockSwitchButton.isOn
    }
    
    
    


}

