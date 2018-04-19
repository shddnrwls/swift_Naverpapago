 //
//  Translation.swift
//  Naverpapgo
//
//  Created by mac on 2018. 4. 19..
//  Copyright © 2018년 swift. All rights reserved.
//

import UIKit
import ObjectMapper

 class Translation: Mappable {
    var message : Message?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        message <- map["message"]
    }
    class Message : Mappable {
        var result : Result?
        required init?(map: Map) {
         
        }
        func mapping(map: Map) {
            result <- map["result"]
        }
        class Result: Mappable {
            var translatedText : String?
            required init?(map: Map) {
            }
            func mapping(map: Map) {
                translatedText <- map["translatedText"]
            }
            
        }
    }
    

}
