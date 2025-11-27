//
//  View+Button.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 26/11/25.
//

import SwiftUI

struct PressableButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.smooth, value: configuration.isPressed)
            
    }
}


enum ButtonStyleOption {
    case press, plain
}

extension View {
    @ViewBuilder
    func button(_ option: ButtonStyleOption = .plain, action: @escaping () -> Void) -> some View {
        switch option {
            case .press:
            self.presssableButton(action: action)
        case .plain:
            self.plainButton(action: action)
        }
    }
    
    private func presssableButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PressableButtonStyle())
    }
    
    private func plainButton(action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            self
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    Preview()
}

fileprivate struct Preview: View{
    var body: some View{
        VStack{
            Text("Continue")
                .primaryButton()
                .button(.press){
                    
                }
            Text("Continue")
                .primaryButton()
                .button(.plain){
                    
                }
        }
        .padding()
        .infinityFrame()
        .background(Color.appTheme.viewBackground)
    }
   
}
