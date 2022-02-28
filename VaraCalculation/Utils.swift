//
//  Utils.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import Foundation

extension Double {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(format: "%.7f", self)
    }
}

extension String {
    var show: String {
        return self.replacingOccurrences(of: ".", with: ",")
    }
}
