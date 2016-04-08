//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import UIKit

class PokemonsCollectionWireFrame: PokemonsCollectionWireFrameProtocol
{
    static func presentPokemonsCollectionModule(fromView uiview: AnyObject) {

        
        let window = uiview as! UIWindow
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        // Generating module components
        let view = mainStoryboard.instantiateViewControllerWithIdentifier("PokemonsCollectionView") as! PokemonsCollectionView
        let presenter: protocol<PokemonsCollectionPresenterProtocol, PokemonsCollectionInteractorOutputProtocol> = PokemonsCollectionPresenter()
        let interactor: PokemonsCollectionInteractorInputProtocol = PokemonsCollectionInteractor()
        let APIDataManager: PokemonsCollectionAPIDataManagerInputProtocol = PokemonsCollectionAPIDataManager()
        let localDataManager: PokemonsCollectionLocalDataManagerInputProtocol = PokemonsCollectionLocalDataManager()
        let wireFrame: PokemonsCollectionWireFrameProtocol = PokemonsCollectionWireFrame()
        
        // Connecting the view
        view.presenter = presenter
        
        // Connecting the presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        
        // Connecting the interactor
        interactor.presenter = presenter
        interactor.APIDataManager = APIDataManager
        interactor.localDatamanager = localDataManager
        
        // Presenting
        let navigationController = UINavigationController(navigationBarClass: nil, toolbarClass: nil)
        
        navigationController.pushViewController(view, animated: false)
        window.rootViewController = navigationController

    }
}