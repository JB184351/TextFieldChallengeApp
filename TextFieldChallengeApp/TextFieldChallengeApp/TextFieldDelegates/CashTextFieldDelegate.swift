//
//  CashTextFieldDelegate.swift
//  TextFieldChallengeApp
//
//  Created by Justin Bengtson on 9/1/22.
//

import Foundation
import UIKit

class CashFieldTextDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return true
    }
}
