//
//  PhotoModel.swift
//  Navigation
//
//  Created by Pavel on 25.05.2022.
//

import UIKit

struct Photo {
    var imageName: String

    static func allPhotos() -> [Photo] {
        var photos = [Photo]()
        photos.append(Photo(imageName: "car1"))
        photos.append(Photo(imageName: "car2"))
        photos.append(Photo(imageName: "car3"))
        photos.append(Photo(imageName: "car4"))
        photos.append(Photo(imageName: "car5"))
        photos.append(Photo(imageName: "car6"))
        photos.append(Photo(imageName: "car7"))
        photos.append(Photo(imageName: "car8"))
        photos.append(Photo(imageName: "car9"))
        photos.append(Photo(imageName: "car10"))
        photos.append(Photo(imageName: "car11"))
        photos.append(Photo(imageName: "car12"))
        photos.append(Photo(imageName: "car13"))
        photos.append(Photo(imageName: "car14"))
        photos.append(Photo(imageName: "car15"))
        photos.append(Photo(imageName: "car16"))
        photos.append(Photo(imageName: "car17"))
        photos.append(Photo(imageName: "car18"))
        photos.append(Photo(imageName: "car19"))
        photos.append(Photo(imageName: "car20"))
        return photos
    }
}
