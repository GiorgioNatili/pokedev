//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class FavoritePokemonsInteractor: FavoritePokemonsInteractorInputProtocol
{
    weak var presenter: FavoritePokemonsInteractorOutputProtocol?
    var APIDataManager: FavoritePokemonsAPIDataManagerInputProtocol?
    var localDatamanager: FavoritePokemonsLocalDataManagerInputProtocol?
    
    init() {}
}