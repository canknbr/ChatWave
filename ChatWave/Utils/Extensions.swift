//
//  Extensions.swift
//  ChatWave
//
//  Created by Can Kanbur on 7.06.2023.
//

import UIKit

extension UIApplication{
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
