//
//  KeyboardView.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import SwiftUI

struct KeyboardView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        HStack {
            VStack {
                FirstRowKeyboardView()
                NumbersKeyboardView()
                LastRowKeyboardView()
            }
            RightColumnKeyboardView()
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
            .environmentObject(CalculatorViewModel())
    }
}
