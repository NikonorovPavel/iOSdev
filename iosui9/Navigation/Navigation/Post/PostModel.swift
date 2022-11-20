//
//  PostModel.swift
//  Navigation
//
//  Created by Pavel on 24.05.2022.
//

import UIKit

struct Post {
    let author: String
    let description: String
    let image: UIImage?
    var likes: Int
    var views: Int

    static func allPosts() -> [Post] {
        var posts = [Post]()
        let defaultImage = UIImage(named: "car")
        
        posts.append(Post(author: "Author", description: "Description", image: UIImage(named: "carqqqq") ?? defaultImage, likes: 100, views: 234))
        posts.append(Post(author: "AuthorSecond", description: "Super car", image: UIImage(named: "car") ?? defaultImage, likes: 123, views: 567))
        posts.append(Post(author: "noName", description: "Orange car", image: UIImage(named: "car") ?? defaultImage, likes: 1456, views: 12000))
        posts.append(Post(author: "unknown", description: "Orange super car", image: UIImage(named: "car") ?? defaultImage, likes: 1000000, views: 10000000))
        
        return posts
    }
}
