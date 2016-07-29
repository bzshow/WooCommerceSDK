//
//  Customer.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 28/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public struct Customer {
    var id : Int
    var dateCreated : NSDate
    var dateModified : NSDate
    var email : String
    var firstName : String
    var lastName : String
    var username : String
    var password : String
    var lastOrder : [CustomerLastOrder]
    var ordersCount : Int
    var totalSpent : String
    var avatarURL : String
    var billingAddresses : [BillingAddress]
    var shippingAddresses : [ShippingAddress]
}

public struct CustomerLastOrder {
    var id : Int
    var date : NSDate /// UTC Date time
}

public struct BillingAddress {
    var firstName : String
    var lastName : String
    var company : String
    var address1 : String
    var address2 : String
    var city : String
    var state : String
    var postcode : String
    var countr : String /// ISO Code of the country
    var email : String
    var phone : String
}

public struct ShippingAddress {
    var firstName : String
    var lastName : String
    var company : String
    var address1 : String
    var address2 : String
    var city : String
    var state : String
    var postcode : String
    var country : String
}

public struct CustomerDownload {
    var downloadURL : String
    var downloadID : String
    var productID : Int
    var downloadName : String
    var orderID : Int
    var orderKey : String
    var downloadRemaining : String
    var accessExpires : String
    var file : DownloadFile
}

public struct DownloadFile {
    var name : String
    var file : String
}