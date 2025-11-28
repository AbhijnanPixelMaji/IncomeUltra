//
//  Pay.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 28/11/25.
//

import Foundation

 struct Pay {
     var incomeType: IncomeType
     var weekly: Double
     var biWeekly: Double
     let fourWeekly: Double
     let monthly: Double
     let yearly: Double
    
     init(incomeType: IncomeType = .gross, weekly: Double = 0, biWeekly: Double = 0.0, fourWeekly: Double = 0.0, monthly: Double = 0.0, yearly: Double = 0.0) {
         self.incomeType = incomeType
         self.weekly = weekly
         self.biWeekly = biWeekly
         self.fourWeekly = fourWeekly
         self.monthly = monthly
         self.yearly = yearly
     }
}

extension Pay {
    enum IncomeType {
        case gross
        case takeHome
    }
    
    var description: String {
        switch incomeType {
        case .gross:"Gross"
        case .takeHome:"Take Home"
        }
    }
}

extension Pay{
    var breakdown: [(name: String, value: Double)] {
        [
            ("Weekly", weekly),
            ("Bi-Weekly", biWeekly),
            ("4-Weekly", fourWeekly),
            ("Monthly", monthly),
            ("Yearly", yearly),
            
        ]
    }
}
