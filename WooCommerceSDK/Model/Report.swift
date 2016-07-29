//
//  Report.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 27/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

struct SalesRecord {
    var sales : String
    var orders : Int
    var items : Int
    var tax : String
    var shipping : String
    var discount : String
    var customers : Int
}

struct SalesReport {
    var totalSales : String
    var netSales : String
    var averageSales : String
    var totalOrders : Int
    var totalItems : Int
    var totalTax : String
    var totalShipping : String
    var totalRefunds : Int
    var totalDiscount :  Int
    var totalsGroupedBy : String
//    var totals : [Sales] // From documentation it's an array of sale item, from sample JSON it's actually an object. Refer to http://woothemes.github.io/woocommerce-rest-api-docs/?shell#retrieve-sales-report
    
}

struct TopSellersReport {
    var title : String
    var productID : Int
    var quantity : Int
}