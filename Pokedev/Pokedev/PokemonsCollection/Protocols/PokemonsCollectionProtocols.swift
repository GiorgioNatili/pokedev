//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

protocol PokemonsCollectionViewProtocol: class
{
    var presenter: PokemonsCollectionPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
    
    func showErrorMessage(message:String)
}

protocol PokemonsCollectionWireFrameProtocol: class
{
    static func presentPokemonsCollectionModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol PokemonsCollectionPresenterProtocol: class
{
    var view: PokemonsCollectionViewProtocol? { get set }
    var interactor: PokemonsCollectionInteractorInputProtocol? { get set }
    var wireFrame: PokemonsCollectionWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
    
    func openFavorites()
    func openDetails(id:String)
    
    func loadPokemons()
    
}

protocol PokemonsCollectionInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
    func showData(data:AnyObject)
    func showErrorMessage(error:NSError)
}

protocol PokemonsCollectionInteractorInputProtocol: class
{
    var presenter: PokemonsCollectionInteractorOutputProtocol? { get set }
    var APIDataManager: PokemonsCollectionAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PokemonsCollectionLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
    
    func loadData()
}

protocol PokemonsCollectionDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
    
}

protocol PokemonsCollectionAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
    func loadPokemonsData(completion: ((response:AnyObject, error:NSError?) -> ())?)
    
}

protocol PokemonsCollectionLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
