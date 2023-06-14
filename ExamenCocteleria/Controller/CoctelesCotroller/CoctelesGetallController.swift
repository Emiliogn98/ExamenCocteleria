//
//  CoctelesGetallController.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA17 on 14/06/23.
//

import UIKit

class CoctelesGetallController: UIViewController {
    
    var cocteles  : [Int] = []
    
    
    @IBOutlet weak var BarraBusqueda: UISearchBar!
    @IBOutlet weak var collectionviewOutlet: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionviewOutlet.delegate = self
        //collectionviewOutlet.dataSource = self
    }
}
