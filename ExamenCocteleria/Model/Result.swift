//
//  Result.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA4 on 14/06/23.
//

import Foundation

struct Result<T : Codable> : Codable {
    
    var Correct : Bool
    var ErrorMessage : String?
  //  var Ex : String
    var Object : T?
    var Objects : [T]?
    
    init() {
        self.Correct = false
        self.ErrorMessage = ""
      //  self.Ex = ""
        self.Object = nil
        self.Objects = []
       // self.Objects = nil
    }
    
}

