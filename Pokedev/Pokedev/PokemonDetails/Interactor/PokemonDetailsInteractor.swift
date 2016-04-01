//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class PokemonDetailsInteractor: PokemonDetailsInteractorInputProtocol
{
    weak var presenter: PokemonDetailsInteractorOutputProtocol?
    var APIDataManager: PokemonDetailsAPIDataManagerInputProtocol?
    var localDatamanager: PokemonDetailsLocalDataManagerInputProtocol?
    
    init() {}
}