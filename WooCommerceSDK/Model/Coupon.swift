//
//  Coupon.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 28/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation


public enum CouponType: String {
    case fixedCart = "fixed_cart"
    case percent = "percent"
    case fixedProduct = "fixed_product"
    case percentProduct = "percent_product"
}

public struct Coupon {
    
    /// Coupon ID, Readonly
    private (set) var id : Int
    
    /// Coupen code, always lowercase, Mandatory
    var code : String!
    
    /// Coupon type. Valid core types are : `fixed_cart`,`percent`,`fixed_product`,`percent_product`. Default is `fixed_cart`
    var type : CouponType
    
    /// UTC DateTime when the coupon was created
    private (set) var createdAt: NSDate
    
    /// UTC DateTime when the coupon was last updated
    private (set) var updatedAt: NSDate
    
    var amount : NSDecimalNumber
    
    var description : String
    var discountType : String
    
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