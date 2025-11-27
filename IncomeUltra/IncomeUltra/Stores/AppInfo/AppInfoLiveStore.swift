//
//  AppInfoLiveStore.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 27/11/25.
//

import Foundation

struct AppInfoLiveStore {
    let name: String = "Income Ultra"
    let description: String = "Income Ultra calculate your income from hourly rates or salary, including overtime, and provide a detailed financial breakdown."
    let debveloper: String = "Abhijnan Maji"
    let website: URL? = URL(string: "https://www.genssyioscode.com/projects/income-ultra")
    let agreements: Agreements = .init()
    
    
    var version: String {
        if let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String {
            return version
        }
        return "_"
    }
    
    var compactibility: String {
        if let minVersion = Bundle.main.infoDictionary?["MinimumOSVersion"] as? String {
            return "iOS \(minVersion)"
        }
        return "_"
    }
}

extension AppInfoLiveStore{
    struct Agreements: Codable {
        let privacyPolicyUrl: String = "https://www.genssyioscode.com/projects/income-ultra"
        let termsAndConditionsUrl: String = "https://www.genssyioscode.com/projects/income-ultra"
        let copyrightPolicyUrl: String = "https://www.genssyioscode.com/projects/income-ultra"
        let disclaimeryUrl: String = "https://www.genssyioscode.com/projects/income-ultra"
    }
}
