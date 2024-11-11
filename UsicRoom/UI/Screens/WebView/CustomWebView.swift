//
//  CustomWebView.swift
//  UsicRoom
//
//  Created by Chan on 11/7/24.
//

import WebKit

class CustomWebView: WKWebView, ObservableObject {
    
    init() {
        let configuration = WKWebViewConfiguration()
        
        configuration.allowsInlineMediaPlayback = true
        configuration.websiteDataStore = .default()
        
        super.init(frame: .zero, configuration: configuration)
        
        self.navigationDelegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomWebView: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("WebView finished loading")
    }
}
