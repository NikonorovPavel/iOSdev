//
//  PostImage.swift
//  Navigation
//
//  Created by Pavel on 28.05.2022.
//

import UIKit

protocol TapPostImageDelegate: AnyObject {
    func postImagePressed(author: String, description: String, image: UIImage)
}
