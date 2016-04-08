//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import UIKit

class PokemonDetailsWireFrame: PokemonDetailsWireFrameProtocol
{
    func presentPokemonDetailsModule(fromView uiview: AnyObject)
    {
        let viewController = uiview as! UIViewController
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Generating module components
        let view = mainStoryboard.instantiateViewControllerWithIdentifier("PokemonDetails") as! PokemonDetailsView
        let presenter: protocol<PokemonDetailsPresenterProtocol, PokemonDetailsInteractorOutputProtocol> = PokemonDetailsPresenter()
        let interactor: PokemonDetailsInteractorInputProtocol = PokemonDetailsInteractor()
        let APIDataManager: PokemonDetailsAPIDataManagerInputProtocol = PokemonDetailsAPIDataManager()
        let localDataManager: PokemonDetailsLocalDataManagerInputProtocol = PokemonDetailsLocalDataManager()
        let wireFrame: PokemonDetailsWireFrameProtocol = PokemonDetailsWireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        // Presenting
        (viewController as! UINavigationController).pushViewController(view, animated: true)
    }
}