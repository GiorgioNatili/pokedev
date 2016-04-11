//
// Created by Benjamin Soung
// Copyright (c) 2016 Benjamin Soung. All rights reserved.
//

import Foundation
import Alamofire

class PokemonsCollectionAPIDataManager: PokemonsCollectionAPIDataManagerInputProtocol
{
    init() {
        
        // Initialization
    }
    
    func loadPokemonsData(completion: ((response:AnyObject, error:NSError?) -> ())?) {
        
        // Initialize Alamofire and call an API
        Alamofire.request(.GET, "https://pokeapi.co/api/v2/pokemon")
            .responseJSON { response in
                // print(response.request)  // original URL request
                // print(response.response) // URL response
                // print(response.data)     // server data
                // print(response.result)   // result of response serialization
                
                guard (response.data != nil) else {
                    return
                }
                
                guard (response.result.value != nil) else {
                    
                    completion!(response: NSObject(), error: response.result.error)
                    return
                }
                
                let _ = response.data! as NSData
                
                if let completionHandler = completion {
                    
                    completionHandler(response: response.result.value!, error: response.result.error)
                }

            }
        
    }
}