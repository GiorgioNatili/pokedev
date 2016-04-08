//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import UIKit

class PokemonsCollectionView: UICollectionViewController, PokemonsCollectionViewProtocol
{
    var presenter: PokemonsCollectionPresenterProtocol?
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        print("I got loaded")
        
    }
    
    
    // MARK: - User Interactions
    @IBAction func openFavorites(sender: AnyObject) {
        
        guard (presenter != nil) else {
            
            return
        }
        
        presenter?.openFavorites()
        
    }
    
    @IBAction func openDetails(sender: AnyObject) {
        
        guard (presenter != nil) else {
            
            return
        }
        
        presenter?.openDetails("test")
        
    }
    
}