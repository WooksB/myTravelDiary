//
//  Travel.swift
//  MyTravelDiary
//
//  Created by ktds 11 on 2017. 8. 18..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import Foundation
import UIKit

class Travel {
    
    var index:Int?
    var user:User
    var startDate:String
    var endDate:String
    var title:String
    var detail:String?
    var coverImage:UIImage?
    var destination:Destination
    var regDate:String?
    var subDiary:SubDiary?
    
    init (user:User, startDate:String, endDate:String, title:String, detail:String, coverImage:UIImage, destination:Destination) {
        self.user = user
        self.startDate = startDate
        self.endDate = endDate
        self.title = title
        self.detail = detail
        self.coverImage = coverImage
        self.destination = destination
    }
    
    func insertSubDiary(destination:Destination, title:String, detail:String, image:[UIImage], startDate:String, endDate:String, mainIndex:Int) {
        self.subDiary = SubDiary(destination: destination, startDate: startDate, endDate: endDate, title: title, image: image, detail: detail, mainIndex:mainIndex)
    }
    
}
