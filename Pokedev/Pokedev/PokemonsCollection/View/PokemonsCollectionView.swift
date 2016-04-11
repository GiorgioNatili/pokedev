//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import UIKit

class PokemonsCollectionView: UICollectionViewController, PokemonsCollectionViewProtocol
{
    private let reuseIdentifier = "Cell"

    var presenter: PokemonsCollectionPresenterProtocol?
    
    override func viewDidLoad() {
        
        super.viewDidLoad();
        
        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        guard (presenter != nil) else {
            
            return
        }
        
        presenter!.loadPokemons()
        
    }
    
    // MARK: UICollectionViewDataSource
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        
        // Configure the cell
        
        return cell
    }
    
    // MARK PRESENTER -> VIEW
    func showErrorMessage(message:String) {
        
        // TODO localize the title and the 'Yes' button
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .Alert)
        
        // Initialize Actions
        let yesAction = UIAlertAction(title: "Yes", style: .Default) { (action) -> Void in
            print("The user is okay.")
        }
        
        // Add Actions
        alertController.addAction(yesAction)
        
        // Present Alert Controller
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    
    
    // MARK: - User Interactions
    @IBAction func openFavorites(sender: AnyObject) {
        
        guard (presenter != nil) else {
            
            return
        }
        
        presenter!.openFavorites()
        
    }
    
    @IBAction func openDetails(sender: AnyObject) {
        
        guard (presenter != nil) else {
            
            return
        }
        
        presenter!.openDetails("test")
        
    }
    
}