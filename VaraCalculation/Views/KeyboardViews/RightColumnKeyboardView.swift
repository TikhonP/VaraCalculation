//
//  RightColumnKeyboardView.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import SwiftUI

struct RightColumnKeyboardView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            ForEach(viewModel.calculator.rightColunButtons, id: \.self) { button in
                Button(action: {
                    viewModel.buttonPressed(but: button)
                }, label: {
                    ButtonView(caption: button.rawValue, color: .orange)
                })
            }
        }
    }
}

struct RightColumnKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        RightColumnKeyboardView()
            .environmentObject(CalculatorViewModel())
    }
}
