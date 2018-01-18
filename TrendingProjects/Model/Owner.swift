//
//  Owner.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 1/18/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper
import AlamofireObjectMapper.Swift
import ObjectMapper

class Owner: NSObject, Mappable {
    
    var login: String?
    var avatar_url: String?
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {

        login <- map["login"]
        avatar_url <- map["avatar_url"]
    }
}
