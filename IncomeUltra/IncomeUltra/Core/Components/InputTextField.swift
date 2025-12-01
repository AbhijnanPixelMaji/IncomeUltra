//
//  InputTextField.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 30/11/25.
//

import SwiftUI


struct InputTextField : View{
    let placeholder: String
    @Binding var value: Double?
    @State private var text: String = ""
    
    init(placeholder: String, value: Double? = nil, text: String) {
        self.placeholder = placeholder
        self.value = value
        self.text = text
    }
    
    
    var body: some View{
        TextField(placeholder, text: $text)
            .inputTextField()
    }
}

#Preview {
   Preview()
}

fileprivate struct Preview : View {
    @State var value: Double? = nil
    
    var body: some View {
        InputTextField("$ 65,000", value: $value)
            .padding()
            .infinityFrame()
            .background(Color.appTheme.viewBackground)
    }
}
