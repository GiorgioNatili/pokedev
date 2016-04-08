//
//  AppDependencies.swift
//  Pokedev
//
//  Created by Natili, Giorgio on 4/8/16.
//  Copyright © 2016 Natili, Giorgio. All rights reserved.
//

import UIKit

class AppDependencies {

    private var favoritePokemons:FavoritePokemonsWireFrame!
    private var pokemondDetails:PokemonDetailsWireFrame!

    
    init(){
        
        self.configureDependencies()
        
    }
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
        
        PokemonsCollectionWireFrame.presentPokemonsCollectionModule(fromView: window)
        
    }
    
    func configureDependencies() {
     
      //  favoritePokemons = FavoritePokemonsWireFrame()
      //  pokemondDetails = PokemonDetailsWireFrame()

    }

}
