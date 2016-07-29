//
//  TaxRate.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 28/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

struct TaxRate {
    var id : Int
    
    /// Country ISO 3166 code. See [ISO 3166 Codes](http://www.chemie.fu-berlin.de/diverse/doc/ISO_3166.html) for more details
    var country : String
    
    var state : String
    
    var postcode : String
    
    var city : String
    
    var rate : String
    
    var name : String
    
    var priority : Int
    
    var compound : Bool
    
    var shipping : Bool
    
    var order : Int
    
    var taxClass : String // named class but it conflict
}