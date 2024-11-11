//
//  HomeWebView.swift
//  UsicRoom
//
//  Created by Chan on 11/7/24.
//

import Foundation

class HomeWebView: CustomWebView {
    override init() {
        super.init()
        load(URLRequest(url: BundleSearchHelper.homeURL))
    }
    
    @MainActor required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
