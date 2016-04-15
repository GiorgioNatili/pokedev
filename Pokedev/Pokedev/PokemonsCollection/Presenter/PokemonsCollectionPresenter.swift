//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON

class PokemonsCollectionPresenter: PokemonsCollectionPresenterProtocol, PokemonsCollectionInteractorOutputProtocol
{
    weak var view: PokemonsCollectionViewProtocol?
    var interactor: PokemonsCollectionInteractorInputProtocol?
    var wireFrame: PokemonsCollectionWireFrameProtocol?
    
    private let DEFAULT_ERROR_MESSAGE = "Something went wrong, sorry!"
    
    init() {
    
    }
    
    // MARK: - Data layer
    func loadPokemons() {
        
        // TODO: load the data from the net
        interactor?.loadData()
        
    }
    
    // MARK: INTERACTOR -> PRESENTER
    func showData(data: AnyObject) {
        
        guard (view != nil) else {
            return
        }
        
        let json = JSON(data)
        let results = json["results"]
        
        var pokemons = [Pokemon]()
        
        for (_, content):(String, JSON) in results {
            
            let pokemon = Pokemon()
            
            if let name = content["name"].string {
                
                pokemon.name = name
            }
            
            if let url = content["url"].string {
                
                pokemon.detailsAPI = url
            }
            
            pokemons.append(pokemon)
        }
        
        view!.renderData(pokemons)
        
    }
    
    func showErrorMessage(error: NSError) {
      
        guard (view != nil) else {
            return
        }
        
        // TODO log the core error with crashlythics
        if let message = error.localizedFailureReason {
            
            view!.showErrorMessage(message)
        } else {
            
            view!.showErrorMessage(DEFAULT_ERROR_MESSAGE)

        }
      
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