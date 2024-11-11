//
//  BundleSearchHelper.swift
//  UsicRoom
//
//  Created by Chan on 11/8/24.
//

import Foundation

struct BundleSearchHelper {
    
    static let baseURL: String = {
        return Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String ?? ""
    }()
    
    static let searchURL: URL = {
        return makeFullURL(path: "SEARCH_URL")
    }()
    
    static let homeURL: URL = {
        return makeFullURL(path: "HOME_URL")
    }()
    
    static let libraryURL: URL = {
        return makeFullURL(path: "LIBRARY_URL")
    }()
    
    static let loginURL: URL = {
        return makeFullURL(path: "LOGIN_URL")
    }()
    
    private static func makeFullURL(path key: String) -> URL {
        let path = Bundle.main.object(forInfoDictionaryKey: key) as? String ?? ""
        return URL(string: baseURL + path)!
    }
}
