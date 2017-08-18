//
//  Destination.swift
//  MyTravelDiary
//
//  Created by ktds 11 on 2017. 8. 18..
//  Copyright © 2017년 CJON, INC. All rights reserved.
//

import Foundation

class Destination {
    
    var nationName:String
    var cityName:String
    var description:String
    
    init (nationName:String, cityName:String, description:String) {
        self.nationName = nationName
        self.description = description
        self.cityName = cityName
    }
    
}
