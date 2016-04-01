//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class PokemonDetailsWireFrame: PokemonDetailsWireFrameProtocol
{
    func presentPokemonDetailsModule(fromView view: AnyObject)
    {
        // Generating module components
        var view: PokemonDetailsViewProtocol = PokemonDetailsView()
        var presenter: protocol<PokemonDetailsPresenterProtocol, PokemonDetailsInteractorOutputProtocol> = PokemonDetailsPresenter()
        var interactor: PokemonDetailsInteractorInputProtocol = PokemonDetailsInteractor()
        var APIDataManager: PokemonDetailsAPIDataManagerInputProtocol = PokemonDetailsAPIDataManager()
        var localDataManager: PokemonDetailsLocalDataManagerInputProtocol = PokemonDetailsLocalDataManager()
        var wireFrame: PokemonDetailsWireFrameProtocol = PokemonDetailsWireFrame()
        
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