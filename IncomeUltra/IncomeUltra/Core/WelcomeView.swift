//
//  Untitled.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 25/11/25.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var shouldShowWelcomeView: Bool
    var body: some View {
        Text("Welcome View")
        
        Button{
            shouldShowWelcomeView = false
        }label: {
            Text("Get Started")
        }
    }
    
}

#Preview {
    WelcomeView(shouldShowWelcomeView: .constant(true))
}
