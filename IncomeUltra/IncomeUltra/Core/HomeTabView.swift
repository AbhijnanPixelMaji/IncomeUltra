//
//  HomeTabView.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 25/11/25.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            incomeTabItemView
            settingsTabItemView
        }
    }
}


private extension HomeTabView{
    var incomeTabItemView: some View{
        NavigationStack{
           IncomeView()
        }
        .tabItem {
            Image(systemName: "dollarsign.square")
                .foregroundColor(.blue)
            Text("Income")
                
        }
    }
    
    var settingsTabItemView: some View{
        NavigationStack{
           IncomeView()
        }
        .tabItem {
            Image(systemName: "gearshape")
                .foregroundColor(.blue)
            Text("Settings")
                
        }
    }

}
#Preview {
    HomeTabView()
}
