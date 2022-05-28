//
//  ButtonLogin.swift
//  Navigation
//
//  Created by Pavel on 28.05.2022.
//

import Foundation

protocol ButtonLoginDelegate: AnyObject {
    func loginButtonPressed()
    func wrongLoginAlert()
}
