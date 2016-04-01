//
// Created by Giorgio Natili
// Copyright (c) 2016 Giorgio Natili. All rights reserved.
//

import Foundation

protocol AvailablePokemonsViewProtocol: class
{
    var presenter: AvailablePokemonsPresenterProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> VIEW
    */
}

protocol AvailablePokemonsWireFrameProtocol: class
{
    class func presentAvailablePokemonsModule(fromView view: AnyObject)
    /**
    * Add here your methods for communication PRESENTER -> WIREFRAME
    */
}

protocol AvailablePokemonsPresenterProtocol: class
{
    var view: AvailablePokemonsViewProtocol? { get set }
    var interactor: AvailablePokemonsInteractorInputProtocol? { get set }
    var wireFrame: AvailablePokemonsWireFrameProtocol? { get set }
    /**
    * Add here your methods for communication VIEW -> PRESENTER
    */
}

protocol AvailablePokemonsInteractorOutputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> PRESENTER
    */
}

protocol AvailablePokemonsInteractorInputProtocol: class
{
    var presenter: AvailablePokemonsInteractorOutputProtocol? { get set }
    var APIDataManager: AvailablePokemonsAPIDataManagerInputProtocol? { get set }
    var localDatamanager: AvailablePokemonsLocalDataManagerInputProtocol? { get set }
    /**
    * Add here your methods for communication PRESENTER -> INTERACTOR
    */
}

protocol AvailablePokemonsDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> DATAMANAGER
    */
}

protocol AvailablePokemonsAPIDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> APIDATAMANAGER
    */
}

protocol AvailablePokemonsLocalDataManagerInputProtocol: class
{
    /**
    * Add here your methods for communication INTERACTOR -> LOCALDATAMANAGER
    */
}
