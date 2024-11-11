//
//  SwitchBottomTabPage.swift
//  UsicRoom
//
//  Created by Chan on 11/7/24.
//

import ComposableArchitecture

@Reducer
struct SwitchBottomTabPage {
    @ObservableState
    struct State {
        var bottomTabPageIndex: HostWebView = .home
    }
    
    enum Action {
        case homeButtonTapped
        case searchButtonTapped
        case libraryButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .homeButtonTapped:
                state.bottomTabPageIndex = .home
                return .none
            case .searchButtonTapped:
                state.bottomTabPageIndex = .search
                return .none
            case .libraryButtonTapped:
                state.bottomTabPageIndex = .library
                return .none
            }
        }
    }
}
