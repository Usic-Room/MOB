//
//  HomeWebView.swift
//  UsicRoom
//
//  Created by Chan on 11/7/24.
//

import SwiftUI
import WebKit
import ComposableArchitecture

@main
struct UsicRoomApp: App {
    
    @UIApplicationDelegateAdaptor var delegate: AppDelegate
    
    static let switchBottomTapBarStore = Store(initialState: SwitchBottomTabPage.State()) {
        SwitchBottomTabPage()
            ._printChanges()
    }
    
    @StateObject private var homeWebView = HomeWebView()
    @StateObject private var searchWebView = SearchWebView()
    @StateObject private var libraryWebView = LibraryWebView()
    
    var body: some Scene {
        WindowGroup {
            let viewStore = ViewStore(UsicRoomApp.switchBottomTapBarStore,
                                      observe: \.bottomTabPageIndex)
            
            ZStack(alignment: .bottom) {
                ZStack {
                    if viewStore.state == HostWebView.home {
                        WebViewWrapper(webView: homeWebView)
                    } else if viewStore.state == HostWebView.search {
                        WebViewWrapper(webView: searchWebView)
                    } else if viewStore.state == HostWebView.library {
                        WebViewWrapper(webView: libraryWebView)
                    }
                }
                .ignoresSafeArea()
                
                BottomTabBar(store: UsicRoomApp.switchBottomTapBarStore)
                    .padding()
                    .background(
                        LinearGradient(
                            gradient: Gradient(stops: [
                                Gradient.Stop(color: Color.black.opacity(0.0), location: 0.0),
                                Gradient.Stop(color: Color.black.opacity(1.0), location: 0.5),
                                Gradient.Stop(color: Color.black.opacity(1.0), location: 1.0)
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .ignoresSafeArea(edges: .bottom)
            }
        }
    }
}
