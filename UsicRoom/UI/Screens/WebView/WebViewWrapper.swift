//
//  WebViewWrapper.swift
//  UsicRoom
//
//  Created by Chan on 11/8/24.
//

import SwiftUI
import WebKit

struct WebViewWrapper: UIViewRepresentable {
    
    let webView: WKWebView
    
    func makeUIView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
    }
}
