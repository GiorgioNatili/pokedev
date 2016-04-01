//
// Created by Giorgio Natili
// Copyright (c) 2016 Giorgio Natili. All rights reserved.
//

import Foundation

class AvailablePokemonsInteractor: AvailablePokemonsInteractorInputProtocol
{
    weak var presenter: AvailablePokemonsInteractorOutputProtocol?
    var APIDataManager: AvailablePokemonsAPIDataManagerInputProtocol?
    var localDatamanager: AvailablePokemonsLocalDataManagerInputProtocol?
    
    init() {}
}