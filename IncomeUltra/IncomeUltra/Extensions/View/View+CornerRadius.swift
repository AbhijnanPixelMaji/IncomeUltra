//
//  View+CornerRadius.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 26/11/25.
//


import SwiftUI

struct AppCornerRadius {
    let value: CGFloat
}

extension View {
     func cornerRadius(_ appCornerRadius: AppCornerRadius) -> some View {
         self
             .cornerRadius(appCornerRadius.value)
    }
}


extension AppCornerRadius {
    static let overall: Self = .init(value: 8)
    static let cell: Self = .init(value: 8)
    static let button: Self = .init(value: 8)
    static let textfield: Self = .init(value: 8)
}


fileprivate struct Preview: View {
    var body: some View {
        Text("Calculate")
            .foregroundStyle(Color.appTheme.accentContrastText)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.appTheme.accent)
            .cornerRadius(.button)
            .button(.press){
                
            }
            .padding()
            .infinityFrame()
            .background(Color.appTheme.viewBackground)
    }
}

#Preview {
    Preview()
}
