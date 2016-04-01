//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

protocol FavoritePokemonsViewProtocol: class
{
    var presenter: FavoritePokemonsPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol FavoritePokemonsWireFrameProtocol: class
{
    func presentFavoritePokemonsModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol FavoritePokemonsPresenterProtocol: class
{
    var view: FavoritePokemonsViewProtocol? { get set }
    var interactor: FavoritePokemonsInteractorInputProtocol? { get set }
    var wireFrame: FavoritePokemonsWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol FavoritePokemonsInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol FavoritePokemonsInteractorInputProtocol: class
{
    var presenter: FavoritePokemonsInteractorOutputProtocol? { get set }
    var APIDataManager: FavoritePokemonsAPIDataManagerInputProtocol? { get set }
    var localDatamanager: FavoritePokemonsLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol FavoritePokemonsDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol FavoritePokemonsAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol FavoritePokemonsLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
