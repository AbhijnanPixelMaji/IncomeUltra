//
//  ContainerRegistration.swift
//  IncomeUltra
//
//  Created by Abhijnan Maji on 27/11/25.
//

import Factory
extension Container {
    var appInfoStore: Factory<AppInfoLiveStore> {
        self {MainActor.assumeIsolated{ AppInfoLiveStore() } }.singleton
    }
    
    var incomeStore: Factory<IncomeStore> {
        self {MainActor.assumeIsolated{ IncomeLiveStore() } }.singleton
    }
}
