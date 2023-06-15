//
//  Drinks.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA4 on 14/06/23.
//

import Foundation
struct drinks : Codable {
    
    
    var idDrink : Int
    var strDrink : String
    var strCategory : String
    var strDrinkThumb: String
    var strAlcoholic : String? = nil
    var strIngredient1 : String? = nil
    var strIn2redient2 : String? = nil
    var strIngredient3 : String? = nil
    

    
}

struct DrinksCategoria<T: Codable> : Codable {

    var drinks : drinks
    
}
//struct DrinksCategoria: Codable {
//
//
//     var drinks : drinks
//}
