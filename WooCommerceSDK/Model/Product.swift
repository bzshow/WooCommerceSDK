//
//  Product.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 27/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public enum ProductType {
    case Simple,Grouped,Affiliate,Variable
}

public struct Product {
    var id : Int
    var name : String
    var slug : String
    var permalink : String
    var dateCreated : NSDate
    var dateModified : NSDate
    var productType : String
    var status : String
    var featured : Bool
    var catalogVisibility : String
    var productDescription : String // HTML
    var shortDescription : String // HTML
    var sku : String
    var price : String
    var regularPrice : String
    var salePrice : String
    var dateOnSaleFrom : String
    var dateOnSaleTo : String
    var priceHTML : String
    var onSale : Bool
    var purchasabe : Bool
    var totalSales : Int
    var virtual : Bool
    var downloadable : Bool
    var downloads : [DownloadProperty]
    var downloadLimit : Int
    var downloadExpiry : Int
    var downloadType : String // standard, application, music
    var externalURL : String // only for external product, check product type
    var buttonText : String // only for external product, check product type
    var taxStatus : String // taxable, shipping, none
    var taxClass : String
    var manageStock : Bool // false
    var stockQuantity : Int
    var inStock : Bool
    var backorders : String // no, notify, allow
    var backordersAllowed : Bool
    var backordered : Bool
    var soldIndividually : Bool
    var weight : String
    var dimensions : [DimensionProperty]
    var shippingRequired : Bool
    var shippingTaxable : Bool
    var shippingClass : String // shipping class slug
    var shippingClassID : Int // shipping class ID
    var reviewsAllowed : Bool
    var averageRating : String
    var ratingCount : Int
    var relatedIDs : [Int]
    var upsellIDs : [Int]
    var crossSellIDs : [Int]
    var parentID : [Int]
    var purchaseNote : String
    var categories : [CategoryProperty]
    var tags : [TagProperty]
    var images : [ImageProperty]
    var attributes : [AttributeProperty]
    var defaultAttributes : [DefaultAttributeProperty]
    var variations : [VariationProperty]
    var groupedProducts : String
    var menuOrder : Int
}

public struct DownloadProperty {
    var id : String
    var name : String
    var file : String
}

public struct DimensionProperty {
    var length : String
    var width : String
    var height : String
}

public struct CategoryProperty {
    var id : Int
    var name : String
    var slug : String
}

public struct TagProperty {
    var id : Int
    var name : String
    var slug : String
}

public struct ImageProperty {
    var id : Int
    var dateCreated : NSDate
    var dateModified : NSDate
    var src : String // image source
    var name : String
    var alt : String // alternative text
    var position : Int // position in array, 0 == featured
}

public struct AttributeProperty {
    var id : Int
    var name : String
    var position : Int
    var visible : Bool
    var variation : Bool
    var option : [String] // String of term name
}

public struct DefaultAttributeProperty {
    var id : Int
    var name : String
    var option : String
}

public struct VariationProperty {
    var id : Int
    var dateCreated : NSDate
    var dateModified : NSDate
    var permalink : String // URL format
    var sku : String
    var price : String
    var regularPrice : String
    var salePrice : String
    var dateOnSaleFrom : String
    var dateOnSaleTo : String
    var onSale : Bool
    var purchasable : Bool
    var virtual : Bool
    var downloadable : Bool
    var downloads : [DownloadProperty]
    var downloadLimit : Int
    var downloadExpiry : Int
    var taxStatus : String
    var taxClass : String
    var manageStock : Bool
    var stockQuantity : Int
    var inStock : Bool
    var backorders : String
    var backordersAllowed : Bool
    var backordered : Bool
    var purchaseable : Bool
    var weight : Int
    var dimension : [DimensionProperty]
    var shippingClass : String
    var shippingClassID : Int
    var image : [ImageProperty] // featured image, use position 0
    var attributes : [VariationAttributeProperty]
    
}

public struct VariationAttributeProperty {
    var id : Int
    var name : String
    var option : String // selected attribute term name
}

public struct ProductReview {
    var id : Int
    var dateCreated : String
    var rating : Int
    var name : String
    var email : String
    var verified : Bool
}