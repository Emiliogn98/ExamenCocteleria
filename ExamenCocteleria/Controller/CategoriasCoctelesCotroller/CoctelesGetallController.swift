//
//  CoctelesGetallController.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA17 on 14/06/23.
//

import UIKit

class CoctelesGetallController: UIViewController {
    
    var cocteles  : [Int] = []
    var IdCoctel : Int = 0
    var categoria = "alcoholica"
    var imagen : UIImage =  UIImage(named: "Apple-iPhone-14-iPhone-14-Plus-2up-PRODUCT-RED-220907-geo_inline.jpg.large")!
    
    
    @IBOutlet weak var BarraBusqueda: UISearchBar!
    @IBOutlet weak var collectionviewOutlet: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionviewOutlet.delegate = self
        collectionviewOutlet.dataSource = self
        collectionviewOutlet.register(UINib(nibName: "CoctelesCell", bundle: .main), forCellWithReuseIdentifier: "CoctelesCell")
        
        
        
        
    }
}

extension CoctelesGetallController : UICollectionViewDataSource, UICollectionViewDelegate
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //cocteles.count
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "CoctelesCell", for: indexPath) as! CoctelesCell
        
        item.lblCategoria.text = categoria
        item.imagenUIOutlet.image = imagen
        
    
        
        return item
    }
    
   
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
        IdCoctel = 1//cocteles[indexPath.row].IdCoctel
        
        self.IdCoctel = 1//self.cocteles[indexPath.row].IdCoctel
        self.performSegue(withIdentifier: "seguesCocteles", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender : (Any)? )
    {
        if segue.identifier == "seguesCocteles"
        {
            let formControl = segue.destination as!  CoctelesController
            formControl.IdCoctel  = self.IdCoctel
        }
    }
}
