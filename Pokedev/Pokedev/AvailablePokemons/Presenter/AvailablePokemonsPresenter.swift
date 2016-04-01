//
// Created by Giorgio Natili
// Copyright (c) 2016 Giorgio Natili. All rights reserved.
//

import Foundation

class AvailablePokemonsPresenter: AvailablePokemonsPresenterProtocol, AvailablePokemonsInteractorOutputProtocol
{
    weak var view: AvailablePokemonsViewProtocol?
    var interactor: AvailablePokemonsInteractorInputProtocol?
    var wireFrame: AvailablePokemonsWireFrameProtocol?
    
    init() {}
}