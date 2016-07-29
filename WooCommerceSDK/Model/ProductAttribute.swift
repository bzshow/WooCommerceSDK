//
//  ProductAttribute.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 27/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public struct ProductAttribute {
    
    /// Unique identifier for resource
    var id : Int
    
    /// Attribute name
    var name : String
    
    /// An alphanumeric identifier for the resource unique to its type
    var slug : String
    
    /// Type of Attribute. Default is `select`. Options : `select` and `text`. **Warning**: Some plugin might introduce new type
    var type : String
    
    /// Default sort order. Default is `menu_order`. Options : `menu_order`, `name`, `name_num`, and `id`
    var orderBy : String
    
    /// Enable/Disable attribute archives. Default is `false`
    var hasArchives : Bool
    
}