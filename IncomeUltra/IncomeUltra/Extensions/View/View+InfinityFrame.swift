//
//  View+InfinityFrame.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 26/11/25.
//

import SwiftUI


extension View {
    func infinityFrame() -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
