//
//  View+extensions.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 26/11/25.
//

import SwiftUI

extension View {
    func primaryButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.accentContrastText)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appTheme.accent)
            .cornerRadius(.button)
            .shadow(.regular)
            
    }
    
    func destructiveButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.accentContrastText)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.appTheme.destructuve)
            .cornerRadius(.button)
            .shadow(.regular)
    }
    
    func plainButton() -> some View {
        self
            .font(.headline)
            .foregroundStyle(Color.appTheme.text)
            .frame(maxWidth: .infinity)
            .padding()
    }
}

fileprivate struct Preview: View {
    var body: some View {
        VStack(spacing: 24)
        {
            Text("Get Started")
                .primaryButton()
                .button(.press){
                    
                }
            Text("Sign Out")
                .plainButton()
                .button(.press){
                    
                }
            Text("Cancel")
                .plainButton()
                .button(){
                    
                }
        }
    }
}

#Preview {
    Preview()
}
