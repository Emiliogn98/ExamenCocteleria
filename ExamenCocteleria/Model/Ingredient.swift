//
//  Ingredient.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA4 on 15/06/23.
//

import Foundation
struct Ingredient: Codable {

  var ingredients : [Ingredients]? = []

  
}
struct Ingredients: Codable {

  var idIngredient   : String? = nil
  var strIngredient  : String? = nil
  var strDescription : String? = nil
  var strType        : String? = nil
  var strAlcohol     : String? = nil
 
}
