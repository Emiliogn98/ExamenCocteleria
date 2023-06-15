//
//  TESTViewController.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA4 on 14/06/23.
//

import UIKit

class TESTViewController: UIViewController {
    
   // var result = Result<drinks>()
    //var result = DrinksCategoria<drinks>
    //var result = DrinksCategoria<>
    var drinks : [drinks] = []
    var stCategory : String = "Ordinary_Drink"
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

     
        updateUI()
        //print(drinks)
//        DrinkViewModel.GetByCategoria(strCategory: self.stCategory) { result, error in
//            DispatchQueue.main.async {
//                if result!.Correct == true {
//                    for objCategoria in result!.Objects!{
//                        self.drinks.append(objCategoria)
//                    }
//                }
//            }
//        }
    }
    
    func updateUI(){
        self.drinks.removeAll()
        DrinkViewModel.Get { result, error in
           
            DispatchQueue.main.async {
                if result!.Correct == true{
                    for objDrink in result!.Objects!{
                        
                        
                        //self.drinks.append(objDrink)
                    }
                   // self.tableView.reloadData()
                }
                
            }
            
        }
    }

}
