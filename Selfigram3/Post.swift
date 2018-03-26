//
//  Post.swift
//  Selfigram3
//
//  Created by Anisa Thomas on 2018-03-10.
//  Copyright © 2018 Anisa Thomas. All rights reserved.
//

import UIKit
import Parse


class Post: PFObject, PFSubclassing {
    
    @NSManaged var image:PFFile
    @NSManaged var user:PFUser
    @NSManaged var comment:String
    
    static func parseClassName() -> String {
        // sets what the table name on Parse will be called
        return "Post"
    }
    
    
    //let imageURL:URL
    //let user:User
    //let comment:String
    
    convenience init(image:PFFile, user:PFUser, comment:String){
        self.init()
        self.image = image
        self.user = user
        self.comment = comment
        
        //(imageURL:URL, user:User, comment:String)
        // You can name the property you are passing into the function the
        // same name as the class' property. To distinguish the two
        // add "self." to the beginning of the class' property.
        // So for example we are passing in an UImage called image and setting it as our
        // image property for Post.
        // self.imageURL = imageURL
        //self.user = user
        //self.comment = comment
    }
    
}

