//
//  HourlyOutput.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 28/11/25.
//


import Foundation

 struct HourlyOutput {
     var takeHomePay: Pay
     var grossPay: Pay
     
     init(takeHomePay: Pay, grossPay: Pay) {
         self.takeHomePay = takeHomePay
         self.grossPay = grossPay
     }
}
