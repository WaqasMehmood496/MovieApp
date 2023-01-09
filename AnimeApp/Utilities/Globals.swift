//
//  Globals.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import Foundation
import ObjectMapper
import SwiftyJSON


// pass keyPath to parse a specific object from JSON
func parse<T:Mappable>(json:JSON, keyPath:String = "") -> T {
    if keyPath == "" {
        return Mapper<T>().map(JSONString: json.rawString()!)!
    }
    return Mapper<T>().map(JSONString: json[keyPath].rawString()!)!
}

