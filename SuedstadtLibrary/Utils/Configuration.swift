//
//  Configuration.swift
//  SuedstadtLibrary
//
//  Created by Sean Kim on 18/01/2018.
//  Copyright © 2018 TopCoder. All rights reserved.
//

import Foundation

class Configuration {
    
    static let shared = Configuration()
    
    var baseUrl: String = ""
    
    // prevent init
    private init() {
        loadConfig(Bundle.main)
    }
    
    func loadConfig(_ bundle: Bundle) {
        if let path = bundle.path(forResource: "Configuration", ofType: "plist") {
            if let dict = NSDictionary(contentsOfFile: path) as? [String:Any] {
                self.baseUrl = dict["baseUrl"] as? String ?? self.baseUrl
            }
        }
    }
}
