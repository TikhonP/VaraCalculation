//
//  VaraCalculationApp.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import SwiftUI

@main
struct VaraCalculationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CalculatorViewModel())
        }
    }
}
