//
//  DrinkViewModel.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA4 on 14/06/23.
//

import Foundation

class DrinkViewModel {
    
    
    
    func GetByCategoria(){
        
    }
    static func Get (responseResult : @escaping(Result<drinks>?,Error?) -> Void) {
        
        let url = URL(string: "www.thecocktaildb.com/api/json/v1/1/list.php?c=list")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200,
                  let jsonData = data
            else{
                print("Error en la peticion")
                return
            }
            
            if let dataSource = data{
                let decoder = JSONDecoder()
                let result =  try!
                decoder.decode(Result<drinks>.self, from: dataSource)
                responseResult(result,nil)
            }
            if let errorSource = error{
                responseResult(nil,errorSource)
            }
            
        }.resume()
        
        //  return result
    }
    static func GetByCategoria (strCategory: String,responseResult : @escaping(Result<drinks>?,Error?) -> Void) {
        
        let url = URL(string: "www.thecocktaildb.com/api/json/v1/1/filter.php?c=\(strCategory)")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let dataSource = data{
                let decoder = JSONDecoder()
                let result =  try!
                decoder.decode(Result<drinks>.self, from: dataSource)
                responseResult(result,nil)
            }
            if let errorSource = error{
                responseResult(nil,errorSource)
            }
            
        }.resume()
        
        //  return result
    }
}
