//
//  APIService.swift
//  TrendingProjects
//
//  Created by Matias Roldan on 13/1/18.
//  Copyright © 2018 Matias Roldan. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper
import AlamofireObjectMapper.Swift
import Foundation
import ObjectMapper

class APIService {
    
    private var apiUrl = ""
    
    init(){
        if let api = Bundle.main.object(forInfoDictionaryKey: "API_URL") as? String {
            apiUrl = api
        }
    }
    
    func requestRepositories(text: String, created: String, sort: String, order: String, completion: @escaping([Project]?) -> Void) {
        
        let qParam = "\(text) created:>\(created)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let apiRequest = "\(apiUrl)/repositories?sort=\(sort)&order=\(order)&q=\(qParam ?? "")"

        Alamofire.request(apiRequest, method: .get, parameters: nil, headers: nil).responseArray(keyPath: "items") { ( response : DataResponse <[Project]>) in
            completion(response.result.value)
        }
    }
}

