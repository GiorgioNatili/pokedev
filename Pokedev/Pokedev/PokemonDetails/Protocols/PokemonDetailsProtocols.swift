//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

protocol PokemonDetailsViewProtocol: class
{
    var presenter: PokemonDetailsPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol PokemonDetailsWireFrameProtocol: class
{
    class func presentPokemonDetailsModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol PokemonDetailsPresenterProtocol: class
{
    var view: PokemonDetailsViewProtocol? { get set }
    var interactor: PokemonDetailsInteractorInputProtocol? { get set }
    var wireFrame: PokemonDetailsWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol PokemonDetailsInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol PokemonDetailsInteractorInputProtocol: class
{
    var presenter: PokemonDetailsInteractorOutputProtocol? { get set }
    var APIDataManager: PokemonDetailsAPIDataManagerInputProtocol? { get set }
    var localDatamanager: PokemonDetailsLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol PokemonDetailsDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol PokemonDetailsAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol PokemonDetailsLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
