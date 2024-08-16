//
//  ContentView.swift
//  The Movie
//
//  Created by Ajo Alex on 14/08/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = .black
        UITabBar.appearance().unselectedItemTintColor = .white
       
    }
    var body: some View {
        TabView{
            HomeScreenView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")}
            
           SearchScreenView()
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")}
            
            WishListView()
            .tabItem {
                Image(systemName: "list.bullet")
                Text("Wishlist")}
            
            ProfileScreenView()
            .tabItem {
                Image(systemName: "person")
                Text("Profile")}
        }.accentColor(.accentColor)
    }
}

#Preview {
    ContentView()
}
