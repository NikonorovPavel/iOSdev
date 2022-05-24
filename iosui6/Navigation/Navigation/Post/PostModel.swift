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
    let image: UIImage
    let likes: Int
    let views: Int

    static func allPosts() -> [Post] {
        var posts = [Post]()

        posts.append(Post(author: "Author", description: "Description", image: UIImage(named: "car")!, likes: 100, views: 234))
        posts.append(Post(author: "AuthorSecond", description: "Super car", image: UIImage(named: "car")!, likes: 123, views: 567))
        posts.append(Post(author: "noName", description: "Orange car", image: UIImage(named: "car")!, likes: 1456, views: 12000))
        posts.append(Post(author: "unknown", description: "Orange super car", image: UIImage(named: "car")!, likes: 1000000, views: 10000000))
        
        return posts
    }
}
