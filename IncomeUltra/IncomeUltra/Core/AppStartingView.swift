//
//  ContentView.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 25/11/25.
//

import SwiftUI

struct AppStartingView: View {
    @StateObject var viewModel = AppStartingViewModel()
    
    var body: some View {
        Group{
          if viewModel.shouldSHowWelcomeView{
               WelcomeView(shouldShowWelcomeView: $viewModel.shouldSHowWelcomeView)
            }else {
              HomeTabView()
          }
        }
        .animation(.easeIn, value: viewModel.shouldSHowWelcomeView)
    }
}

#Preview {
    AppStartingView()
}
