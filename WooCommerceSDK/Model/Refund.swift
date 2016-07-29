//
//  Refund.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 28/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public struct Refund {
    var id : Int
    var dateCreated : NSDate
    var amount : String
    var reason : String
    var lineItems : [LineItemProperty]
}