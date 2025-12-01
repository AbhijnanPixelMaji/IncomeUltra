//
//  ContentView.swift
//  StateAndBindingApp
//
//  Created by Abhijnan Maji on 01/12/25.
//

import SwiftUI

struct ContentView: View {
   
    @State var counter = 0
    var body: some View {
        VStack {
           
            Text("\(counter)")
            SubView()
        }
        .padding()
    }
    
    func increseCounter() {
        counter += 1
    }
}

#Preview {
    ContentView()
}

struct SubView: View {
    
    @State var counter = 0
    var body: some View {
        Button(action: {
            counter += 1)
        }, label: {
            Text("Increase Counter")
        })
    }
}
