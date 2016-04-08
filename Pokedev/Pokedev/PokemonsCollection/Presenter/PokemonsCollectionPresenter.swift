//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import UIKit

class PokemonsCollectionPresenter: PokemonsCollectionPresenterProtocol, PokemonsCollectionInteractorOutputProtocol
{
    weak var view: PokemonsCollectionViewProtocol?
    var interactor: PokemonsCollectionInteractorInputProtocol?
    var wireFrame: PokemonsCollectionWireFrameProtocol?
    
    init() {
    
    }
    
    // MARK: - Data layer
    func loadPokemons() {
        
        // TODO: load the data from the ned
        
    }
    
    // MARK: - User Interactions
    func openDetails(id: String) {
        
        print("I am going to open the pokemon \(id)")
        
        if let window = UIApplication.sharedApplication().delegate!.window! {
            
            let wireFrame:PokemonDetailsWireFrame = PokemonDetailsWireFrame()
            wireFrame.presentPokemonDetailsModule(fromView: window.rootViewController!)
            
        }
        
    }
    
    func openFavorites() {
        // Launch the favorites view
        
        if let window = UIApplication.sharedApplication().delegate!.window! {
            
            let wireFrame:FavoritePokemonsWireFrameProtocol = FavoritePokemonsWireFrame()
            wireFrame.presentFavoritePokemonsModule(fromView: window.rootViewController!)

        }
        
        
    }
    
}