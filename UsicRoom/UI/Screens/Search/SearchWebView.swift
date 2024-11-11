//
//  SearchWebView.swift
//  UsicRoom
//
//  Created by Chan on 11/7/24.
//

import Foundation
import WebKit

class SearchWebView: CustomWebView {
    override init() {
        super.init()
        load(URLRequest(url: BundleSearchHelper.searchURL))
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
