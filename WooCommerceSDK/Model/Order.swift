//
//  Order.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 28/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

struct Order {
    var id : Int
    var parentID : Int /// Parent OrderID
    var status : String /// Order status. Default is `pending`. Options (plugins may include new status): `pending`, `processing`, `on-hold`, `completed`, `cancelled`, `refunded` and `failed`.
    var orderKey : String
    var number : Int /// Order number
    var currency : String /// ISO currency format
    var version : String /// WooCommerce version
    var pricesIncludeTax : Bool
    var dateCreated : NSDate
    var dateModifier : NSDate
    var customerID : Int
    var discountTotal : String
    var discountTax : String
    var shippingTotal : String
    var shippingTax : String
    var cartTax : String
    var total : String /// Grand total
    var totalTax : String
    var billing : [BillingAddress]
    var shipping : [ShippingAddress]
    var paymentMethod : String /// Payment method ID
    var paymentMethodTitle : String /// Payment method title
    var setPaid : Bool
    var transactionID : String
    var customerIPAddress : String
    var customerUserAgent : String
    var createdVia : String
    var customerNote : String
    var dateCompleted : NSDate
    var datePaid : NSDate
    var cartHash : String /// MD5 hash of cart
    var lineItems : [LineItemProperty]
    var taxLines : [TaxLineProperty]
    var shippingLInes : [ShippingLineProperty]
    var feeLines : [FeeLineProperty]
    var couponLines : [CouponLineProperty]
}

struct LineItemProperty {
    var id : Int
    var name : String
    var sku : String
    var productID : Int
    var variationID : Int
    var quantity : Int
    var taxClass : String
    var price : String
    var subtotal : String
    var subtotalTax : String
    var total : String
    var totalTax : String
    var taxes : [LineTax]
    var meta : [LineItemMeta]
}

struct LineTax {
    var id: Int
    var total : Float
    var subtotal : Float
}

struct LineItemMeta {
    var key : String
    var label : String
    var value : String
}

struct TaxLineProperty {
    var id : Int
    var rateCode : String /// Tax rate code
    var rateID : String /// Tax rate ID
    var label : String /// Tax rate label
    var compound : Bool
    var taxTotal : String /// Tax total (not including shipping tax)
    var shippingTaxTotal : String
}

struct ShippingLineProperty {
    var id : Int
    var methodTitle : String
    var methodID : String /// Shipping method ID
    var total : String /// Line total (after discounts)
    var totalTax : String /// Line total tax (after discounts)
    var taxes : [LineTax] /// Line taxes with `id` and `total`
}

struct FeeLineProperty {
    var id : Int
    var name : String
    var taxClass : String
    var taxStatus : String
    var total : String
    var totalTax : String
    var taxes : [LineTax] /// Line taxes with `id`, `total`, and `subtotal`
}

struct CouponLineProperty {
    var id : Int /// Item ID
    var code : String /// Coupon code
    var discount : String /// Discount total
    var discountTax : String /// Discount total tax
}