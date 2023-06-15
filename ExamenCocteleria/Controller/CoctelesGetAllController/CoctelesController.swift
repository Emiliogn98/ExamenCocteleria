//
//  CoctelesController.swift
//  ExamenCocteleria
//
//  Created by MacBookMBA17 on 15/06/23.
//

import UIKit

class CoctelesController: UIViewController {
    
    var IdCoctel : Int = 0
    var cocteles : [Int] = []

    @IBOutlet weak var collectionVieweoutlet: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionVieweoutlet.delegate = self
        //collectionVieweoutlet.dataSource = self
        //collectionVieweoutlet.register(UINib(nibName: "", bundle: .main), forCellWithReuseIdentifier: "")
    }
    
    // MARK: collection view 

}


