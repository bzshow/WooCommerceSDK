//
//  ProductAttributeTerm.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 27/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public struct ProductAttributeTerm {
    var id : Int /// Unique indentifier for resource
    var name : String /// Term name
    var slug : String /// An alphanumeric identifier for the resource unique to its type
    var menuOrder : Int /// Menu order, used to custom sort the resource
    var count : Int /// Number of published products for the resource
}