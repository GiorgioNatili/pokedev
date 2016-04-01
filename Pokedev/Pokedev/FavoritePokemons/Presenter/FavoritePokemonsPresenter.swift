//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class FavoritePokemonsPresenter: FavoritePokemonsPresenterProtocol, FavoritePokemonsInteractorOutputProtocol
{
    weak var view: FavoritePokemonsViewProtocol?
    var interactor: FavoritePokemonsInteractorInputProtocol?
    var wireFrame: FavoritePokemonsWireFrameProtocol?
    
    init() {}
}