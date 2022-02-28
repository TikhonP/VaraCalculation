//
//  FirstRowKeyboardView.swift
//  VaraCalculation
//
//  Created by Тихон on 01.11.2020.
//

import SwiftUI

struct FirstRowKeyboardView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        HStack {
            ForEach(viewModel.calculator.topRowButtons, id: \.self) { button in
                Button(action: {
                    viewModel.buttonPressed(but: button)
                }, label: {
                    ButtonView(caption: button.rawValue, color: .orange)
                })
            }
        }
    }
}

struct FirstRowKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowKeyboardView()
            .environmentObject(CalculatorViewModel())
    }
}
