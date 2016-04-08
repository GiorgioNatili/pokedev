//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class PokemonsCollectionInteractor: PokemonsCollectionInteractorInputProtocol
{
    weak var presenter: PokemonsCollectionInteractorOutputProtocol?
    var APIDataManager: PokemonsCollectionAPIDataManagerInputProtocol?
    var localDatamanager: PokemonsCollectionLocalDataManagerInputProtocol?
    
    init() {}
}