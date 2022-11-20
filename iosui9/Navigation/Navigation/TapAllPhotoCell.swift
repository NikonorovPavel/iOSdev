//
//  TapAllPhotoCell.swift
//  Navigation
//
//  Created by Pavel on 28.05.2022.
//

import UIKit

protocol TapAllPhotoCellDelegate: AnyObject {
    func tapAction(photo: UIImage)
    func pressCancelAnimationButton()
}
