//
//  User.swift
//  MyTravelDiary
//
//  Created by ktds 11 on 2017. 8. 18..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import Foundation
import UIKit

class User {
    
    var userName:String
    var userId:String
    var nickName:String?
    var postCount:Int?
    var profileImage:UIImage?
    
    init(userName:String, userId:String, nickName:String?, postCount:Int?, profileImage:UIImage?) {
        self.userName = userName
        self.userId = userId
        self.nickName = nickName
        self.postCount = postCount
        self.profileImage = profileImage
    }
}
