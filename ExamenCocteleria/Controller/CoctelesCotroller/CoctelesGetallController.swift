//
//  CoctelesGetallController.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA17 on 14/06/23.
//

import UIKit

class CoctelesGetallController: UIViewController {
    
    var cocteles  : [Int] = []
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
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "CoctelesCell", for: indexPath) as! CoctelesCell
        
        item.lblCategoria.text = categoria
        item.imagenUIOutlet.image = imagen
        
    
        
        return item
    }
}
