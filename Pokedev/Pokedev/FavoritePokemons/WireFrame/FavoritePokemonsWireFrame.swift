//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import UIKit

class FavoritePokemonsWireFrame: FavoritePokemonsWireFrameProtocol
{
    func presentFavoritePokemonsModule(fromView uiview: AnyObject) {
        
        let viewController = uiview as! UIViewController
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Generating module components
        let view = mainStoryboard.instantiateViewControllerWithIdentifier("FavoritePokemons") as! FavoritePokemonsView
        let presenter: protocol<FavoritePokemonsPresenterProtocol, FavoritePokemonsInteractorOutputProtocol> = FavoritePokemonsPresenter()
        let interactor: FavoritePokemonsInteractorInputProtocol = FavoritePokemonsInteractor()
        let APIDataManager: FavoritePokemonsAPIDataManagerInputProtocol = FavoritePokemonsAPIDataManager()
        let localDataManager: FavoritePokemonsLocalDataManagerInputProtocol = FavoritePokemonsLocalDataManager()
        let wireFrame: FavoritePokemonsWireFrameProtocol = FavoritePokemonsWireFrame()
        
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