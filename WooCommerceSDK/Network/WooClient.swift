//
//  WooClient.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 29/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

class WooClient {
    
    let baseURL: NSURL
    var session: NSURLSession = NSURLSession.sharedSession()
    var consumerKey : String
    var consumerSecret : String
    
    
    let APIVersion = "v3"
    var versionPath : String {
        get{
            return "/wc-api/"+APIVersion
        }
    }
    
    init(siteURL: NSURL,
         consumerKey: String,
         consumerSecret: String,
         configuration: NSURLSessionConfiguration = NSURLSessionConfiguration.defaultSessionConfiguration()) {
        
        // only use self here to avoid ambiguity of the same name between variable and parameter
        self.consumerKey = consumerKey
        self.consumerSecret = consumerSecret
        self.baseURL = siteURL
        self.session = NSURLSession(configuration: configuration)
    }
}

// MARK: - Coupon
extension WooClient {
    
    /// A POST HTTP request to create a new Coupon object to server
    func createCoupon(coupon: Coupon, completionHandler:(success: Bool, error: NSError?) -> Void){
    }
    
    
}