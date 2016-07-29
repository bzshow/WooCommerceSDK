//
//  Coupon.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 28/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

struct Coupon {
    var id : Int
    var code : String
    var dateCreated : NSDate
    var dateModified : NSDate
    var description : String
    var discountType : String
    var amount : String
    var expiryDate : String // UTC Timestamp
    var usageCount : Int
    var individualUse : Bool
    var productIDs : [Int]
    var excludeProductIDs : [Int]
    var usageLimit : Int
    var usageLimitPerUser : Int
    var limitUsageToXItems : Int
    var freeShipping : Bool
    var productCategories : [Int]
    var excludedProductCategories : [Int]
    var excludeSaleItems : Bool
    var minimumAmount : String
    var maximumAmount : String
    var emailRestrictions : [String] /// List of email address that can use the coupon
    var usedBy : [Int] /// List of user IDs who have used the coupon
}