//
// Created by Giorgio Natili
// Copyright (c) 2016 Giorgio Natili. All rights reserved.
//

import Foundation

class AvailablePokemonsWireFrame: AvailablePokemonsWireFrameProtocol
{
    func presentAvailablePokemonsModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: AvailablePokemonsViewProtocol = AvailablePokemonsView()
        var presenter: protocol<AvailablePokemonsPresenterProtocol, AvailablePokemonsInteractorOutputProtocol> = AvailablePokemonsPresenter()
        var interactor: AvailablePokemonsInteractorInputProtocol = AvailablePokemonsInteractor()
        var APIDataManager: AvailablePokemonsAPIDataManagerInputProtocol = AvailablePokemonsAPIDataManager()
        var localDataManager: AvailablePokemonsLocalDataManagerInputProtocol = AvailablePokemonsLocalDataManager()
        var wireFrame: AvailablePokemonsWireFrameProtocol = AvailablePokemonsWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
    }
}