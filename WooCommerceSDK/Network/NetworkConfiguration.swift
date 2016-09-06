//
//  NetworkConfiguration.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 30/08/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public final class NetworkConfiguration {
    
    public static var shared: NetworkConfiguration!
    var session: NSURLSession = NSURLSession.sharedSession()
    let baseURL: NSURL
    let consumerKey : String
    let consumerSecret : String
    
    public init(siteURL: NSURL,
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