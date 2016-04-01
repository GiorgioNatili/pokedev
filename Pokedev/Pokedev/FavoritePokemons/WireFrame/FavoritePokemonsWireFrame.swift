//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class FavoritePokemonsWireFrame: FavoritePokemonsWireFrameProtocol
{
    class func presentFavoritePokemonsModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: FavoritePokemonsViewProtocol = FavoritePokemonsView()
        var presenter: protocol<FavoritePokemonsPresenterProtocol, FavoritePokemonsInteractorOutputProtocol> = FavoritePokemonsPresenter()
        var interactor: FavoritePokemonsInteractorInputProtocol = FavoritePokemonsInteractor()
        var APIDataManager: FavoritePokemonsAPIDataManagerInputProtocol = FavoritePokemonsAPIDataManager()
        var localDataManager: FavoritePokemonsLocalDataManagerInputProtocol = FavoritePokemonsLocalDataManager()
        var wireFrame: FavoritePokemonsWireFrameProtocol = FavoritePokemonsWireFrame()
        
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