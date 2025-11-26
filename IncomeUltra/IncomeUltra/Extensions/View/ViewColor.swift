//
//  ViewColor.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 26/11/25.
//

import SwiftUI

// Gendy iOS Code
extension Color {
    static  var appTheme: AppColorTheme  = main
}


extension Color {
    static var main: AppColorTheme {
        .init(
            accent: .init(.accent),
            alternateAccent: .init(.alternateAccent),
            viewBackground: .init(.viewBackground),
            cellBackground: .init(.cellBackground),
            text: .init(.text),
            secondaryText: .init(.secondaryText),
            alternateText: .init(.alternateText),
            accentContrastText: .init(.accentContrastText),
            primaryAction: .init(.primaryAction),
            nutralAction: .init(.nutralAction),
            destructuve: .init(.destructuve),
            success: .init(.success),
            warning: .init(.warning),
            info: .init(.info),
            error: .init(.error),
            inProgress: .init(.inProgress),
            divider: .init(.divider),
            miscelaneous: .init(.miscelaneous)
        )
    }
}

struct AppColorTheme{
    let accent: Color
    let alternateAccent: Color
    let viewBackground: Color
    let cellBackground: Color
    let text: Color
    let secondaryText: Color
    let alternateText: Color
    let accentContrastText: Color
    let primaryAction: Color
    let nutralAction: Color
    let destructuve: Color
    let success: Color
    let warning: Color
    let info: Color
    let error: Color
    let inProgress: Color
    let divider: Color
    let miscelaneous: Color
}

#Preview {
    Preview()
}

fileprivate struct Preview: View {
    var body: some View {
        VStack {
            VStack{
                Text("Title")
                    .foregroundColor(.appTheme.text)
                Text("Subtitle")
                    .foregroundColor(.appTheme.secondaryText)
            }
            
            Divider()
                .foregroundColor(Color.appTheme.accent)
                .padding(.horizontal)
                .cornerRadius(0)
                .foregroundColor(.appTheme.accentContrastText)
            
            Button{ } label: {
                Text("Get Started")
                    .padding()
                    .background(Color.appTheme.primaryAction)
                    .cornerRadius(8)
                    .foregroundColor(.appTheme.accentContrastText)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.appTheme.viewBackground)
    }
}
