//
//  AppStartingViewModel.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 25/11/25.
//

import Foundation
import Combine

@MainActor
final class AppStartingViewModel: ObservableObject {
   @Published var shouldSHowWelcomeView: Bool = true
}
