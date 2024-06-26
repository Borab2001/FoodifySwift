//
//  FoodifyTabView.swift
//  foodify
//
//  Created by Bora Balos on 27/06/2024.
//

import SwiftUI

struct FoodifyTabView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem { 
                    Image(systemName: selectedTab == 0 ? "house" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
            
            RefrigeratorView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "refrigerator" : "refrigerator")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                        
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
            
            ShoppingListView()
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "bag.fill" : "bag")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        
                }
                .onAppear { selectedTab = 3 }
                .tag(3)
            
            CalendarView()
                .tabItem {
                    Image(systemName: "calendar")
                        
                }
                .onAppear { selectedTab = 4 }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    FoodifyTabView()
}
