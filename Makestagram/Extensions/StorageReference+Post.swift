//
//  StorageReference+Post.swift
//  Makestagram
//
//  Created by vanya rohatgi on 7/12/17.
//  Copyright © 2017 Vanya Rohatgi. All rights reserved.
//

import Foundation
import FirebaseStorage

extension StorageReference {
    static let dateFormatter = ISO8601DateFormatter()
    
    static func newPostImageReference() -> StorageReference {
        let uid = User.current.uid
        let timestamp = dateFormatter.string(from: Date())
        
        return Storage.storage().reference().child("images/posts/\(uid)/\(timestamp).jpg")
    }
}
