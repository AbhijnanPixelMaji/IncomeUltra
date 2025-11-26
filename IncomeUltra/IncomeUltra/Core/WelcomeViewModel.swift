//
//  WelcomeViewModel.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 26/11/25.
//

import Foundation
import Combine

@MainActor
final class WelcomeViewModel: ObservableObject {
    func getAppName() -> String {
        return "IncomeUltra"
    }
}
