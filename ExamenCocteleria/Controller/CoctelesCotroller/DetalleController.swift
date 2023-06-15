//
//  DetalleController.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA4 on 15/06/23.
//

import UIKit

class DetalleController: UIViewController {
    
    var IdCoctel : Int = 11007
       var color = UIColor.red.cgColor
       var color2 = UIColor.white.cgColor
       var nombreCoctel : String? = nil
       var categoria : [Drinks] = []
       var stCategory : String = "Cocktail"
    
    
    @IBOutlet weak var lblNombre: UILabel!
    
    @IBOutlet weak var lblId: UILabel!
    
    
    @IBOutlet weak var lblIngrediente1: UILabel!
    
    @IBOutlet weak var lblCantidad1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DrinksViewModel.GetById(IdCoctel: self.IdCoctel) { result, error in
            
                        DispatchQueue.main.async {
                            if result!.drinks != nil{
                                for objDrink in result!.drinks!{
                                    self.categoria.append(objDrink)
                                }
                            }
                            print(self.categoria)
                        }
        }
        
      //  lblNombre.text = categoria
        
        
        
    }
    
    



}

