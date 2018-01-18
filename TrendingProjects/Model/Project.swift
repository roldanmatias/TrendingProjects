//
//  Project.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 15/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper
import AlamofireObjectMapper.Swift
import ObjectMapper

class Project: NSObject, Mappable {
    
    var name: String?
    var projectDescription: String?
    var forks: Int?
    var stars: Int?
    var readme: String?
    var owner: Owner?
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    public func mapping(map: Map) {
        
        name <- map["name"]
        projectDescription <- map["description"]
        forks <- map["forks_count"]
        stars <- map["stargazers_count"]
        readme <- map["url"]
        owner <- map["owner"]
    }
}
