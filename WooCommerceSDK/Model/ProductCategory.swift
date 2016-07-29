//
//  ProductCategory.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 27/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public struct ProductCategory {
    var id : Int ///
    var name : String /// Category name
    var slug : String
    var parent : Int
    var description : String
    var display : String
    var images : [CategoryImageProperty]
    var menuOrder : Int
    var count : Int
}

public struct CategoryImageProperty {
    var id : Int
    var dateCreated : NSDate
    var dateModifier : NSDate
    var src : String
    var name : String
    var alt : String
}