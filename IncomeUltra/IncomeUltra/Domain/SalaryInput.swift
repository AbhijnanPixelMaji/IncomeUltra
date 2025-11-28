//
//  SalaryInput.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 28/11/25.
//

import Foundation

struct SalaryInput: Codable {
    var yearlyGross: Double?
    var takeHomePercentage: Double?
    
    init(yearlyGross: Double? = nil, takeHomePercentage: Double? = nil){
        self.yearlyGross = yearlyGross
        self.takeHomePercentage = takeHomePercentage
        
    }
}


