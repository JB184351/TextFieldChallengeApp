//
//  TextFieldDelegates.swift
//  TextFieldChallengeApp
//
//  Created by Justin Bengtson on 9/1/22.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let charLimit = 5
        let textFieldText: NSString = textField.text! as NSString
        
        return textFieldText.length <= charLimit
    }
}
