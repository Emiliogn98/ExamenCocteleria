//
//  CoctelesGetallController.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA17 on 14/06/23.
//

import UIKit

class CoctelesGetallController: UIViewController {
    
    var cocteles  : [Int] = []
    //var categoria = "alcoholica"
    var imagen : UIImage =  UIImage(named: "Apple-iPhone-14-iPhone-14-Plus-2up-PRODUCT-RED-220907-geo_inline.jpg.large")!
    var IdCoctel : Int = 0
       var color = UIColor.red.cgColor
       var color2 = UIColor.white.cgColor
       var nombreCoctel : String? = nil
       var categoria : [Drinks] = []
       var stCategory : String = "Cocktail"
    
    
    @IBOutlet weak var BarraBusqueda: UISearchBar!
    @IBOutlet weak var collectionviewOutlet: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionviewOutlet.delegate = self
        collectionviewOutlet.dataSource = self
        collectionviewOutlet.register(UINib(nibName: "CoctelesCell", bundle: .main), forCellWithReuseIdentifier: "CoctelesCell")
        
        
        updateUI()
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
           updateUI()
       }
    
    func updateUI(){
        self.categoria.removeAll()
//        DrinkViewModel.GetCategoria { result, error in
//
//            DispatchQueue.main.async {
//                if result!.drinks != nil{
//                    for objDrink in result!.drinks!{
//                        self.categoria.append(objDrink)
//                    }
//                    self.collectionView.reloadData()
//                }
//               // print(self.categoria)
//            }
//
//        }
        
        DrinksViewModel.GetByCategoria(strCategory: self.stCategory) { result, error in
                    DispatchQueue.main.async {
                        if result!.drinks != nil {
                            for objCategoria in result!.drinks!{
                                self.categoria.append(objCategoria)
                            }
                            self.collectionviewOutlet.reloadData()
                        }
                    }
                }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //controlar que hacer antes de ir a la siguiente vista
        
//                if segue.identifier == "AreaDepartamentoSegues" {
//                    let formControl = segue.destination as! DepartamentoController
//                    formControl.IdCoctel = self.IdCoctel
//
//                }
        
//                if segue.identifier == "AreaProductoSegue"{
//                    let formControl = segue.destination as! ProductoCollectionController
//                    formControl.nombreCoctel = self.nombreCoctel!
//                }
       
            }
}

extension CoctelesGetallController : UICollectionViewDataSource, UICollectionViewDelegate
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.categoria.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoctelesCell", for: indexPath) as! CoctelesCell
        
//        item.lblCategoria.text = categoria
//        item.imagenUIOutlet.image = imagen
       
               
               //cell.imageView.image = ""
        cell.lblCategoria.text = categoria[indexPath.row].strDrink
               print(self.categoria)
        
    
        
        return cell
    }
}
