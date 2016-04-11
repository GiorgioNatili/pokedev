//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class PokemonsCollectionInteractor: PokemonsCollectionInteractorInputProtocol
{
    weak var presenter: PokemonsCollectionInteractorOutputProtocol?
    var APIDataManager: PokemonsCollectionAPIDataManagerInputProtocol?
    var localDatamanager: PokemonsCollectionLocalDataManagerInputProtocol?
    
    init() {
    
      // Initialization
    
    }
    
    // MARK: PRESENTER -> INTERACTOR
    func loadData() {
        
        APIDataManager!.loadPokemonsData(gotPokemonsData)
        
    }
    
    // MARK: Internal implementation
    private func dataLoadedCorrectly(result: AnyObject) {
        
        // Show data to the user
        presenter!.showData(result)
        
    }
    
    private func dataLoadErrod(error: NSError) {
        
        // Show an error message
        presenter?.showErrorMessage(error)
        
    }
    
    private func gotPokemonsData(response:AnyObject, err:NSError?) -> () {
        
        let error: NSError? = err
        if error != nil {
            
            dataLoadErrod(error!)
            
        } else {
            
            dataLoadedCorrectly(response)
        }
        
    }
    
    private func dataProgress() {
        
       // presenter.updateProgress(percentage)
    }
    
}