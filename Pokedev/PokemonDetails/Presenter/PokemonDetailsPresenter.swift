//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation

class PokemonDetailsPresenter: PokemonDetailsPresenterProtocol, PokemonDetailsInteractorOutputProtocol
{
    weak var view: PokemonDetailsViewProtocol?
    var interactor: PokemonDetailsInteractorInputProtocol?
    var wireFrame: PokemonDetailsWireFrameProtocol?
    
    init() {}
}