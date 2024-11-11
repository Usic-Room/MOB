//
//  BottomTabBar.swift
//  UsicRoom
//
//  Created by Chan on 11/8/24.
//

import SwiftUI
import ComposableArchitecture

public struct BottomTabBar: View {
    let store: StoreOf<SwitchBottomTabPage>
    
    private let tabs: [(title: String, imageName: String, page: HostWebView)] = [
        ("Home", "music.note.house", .home),
        ("Search", "magnifyingglass", .search),
        ("Library", "building.columns", .library)
    ]
    
    public var body: some View {
        VStack {
            HStack {
                ForEach(tabs, id: \.page) { tab in
                    Spacer()
                    
                    CustomTabButton(
                        title: tab.title,
                        systemImageName: tab.imageName,
                        isSelected: store.state.bottomTabPageIndex == tab.page
                    ) {
                        switch tab.page {
                        case .home:
                            store.send(.homeButtonTapped)
                        case .search:
                            store.send(.searchButtonTapped)
                        case .library:
                            store.send(.libraryButtonTapped)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct CustomTabButton: View {
    let title: String
    let systemImageName: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: systemImageName)
                Text(title)
                    .font(.footnote)
            }
            .foregroundColor(isSelected ? .white : .gray)
        }
    }
}
