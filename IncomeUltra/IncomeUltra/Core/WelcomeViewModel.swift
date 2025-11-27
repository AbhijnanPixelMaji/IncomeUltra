//
//  WelcomeViewModel.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 26/11/25.
//

import Foundation
import Combine
import Factory

@MainActor
final class WelcomeViewModel: ObservableObject {
    @Injected(\.appInfoStore) var appInfoStore
    
    func getAppName() -> String {
        appInfoStore.name
    }
}
