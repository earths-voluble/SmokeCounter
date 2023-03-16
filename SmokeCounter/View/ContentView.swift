//
//  ContentView.swift
//  SmokeCounter
//
//  Created by 이보한 on 2023/03/10.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedIndex) {
                MainView()
                    .onTapGesture {
                        selectedIndex = 0
                    }
                    .tabItem { Image(systemName: "person") }
                    .tag(0)
                StatusView()
                    .onTapGesture {
                        selectedIndex = 1
                    }
                    .tabItem { Image(systemName: "note.text") }
                    .tag(1)
                SettingsView()
                    .onTapGesture {
                        selectedIndex = 2
                    }
                    .tabItem { Image(systemName: "gear") }
                    .tag(2)
                    
            }
            .navigationTitle(tabTitle)
        }
    }
    var tabTitle: String {
        switch selectedIndex {
        case 0: return "현황"
        case 1: return "통계"
        case 2: return "설정"
        default: return ""
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
