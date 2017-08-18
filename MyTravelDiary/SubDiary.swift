//
//  SubDiary.swift
//  MyTravelDiary
//
//  Created by ktds 11 on 2017. 8. 18..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import Foundation
import UIKit

class SubDiary {
    
    var mainIndex:Int
    var destination:Destination
    var startDate:String
    var endDate:String
    var title:String
    var image:[UIImage]?
    var detail:String?
    
    init (destination:Destination, startDate:String, endDate:String, title:String, image:[UIImage], detail:String, mainIndex:Int) {
        self.destination = destination
        self.startDate = startDate
        self.endDate = endDate
        self.title = title
        self.image = image
        self.detail = detail
        self.mainIndex = mainIndex
    }
    
}
