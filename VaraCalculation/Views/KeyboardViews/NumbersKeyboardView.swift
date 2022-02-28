//
//  NumbersKeyboardView.swift
//  VaraCalculation
//
//  Created by Тихон on 01.11.2020.
//

import SwiftUI

struct NumbersKeyboardView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        ForEach(Array(stride(from: 7, to: 0, by: -3)), id: \.self) { line  in
            HStack {
                ForEach(line ..< line+3) { i in
                    Button(action: {
                        viewModel.addNumber(num: String(i))
                    }, label: {
                        ButtonView(caption: String(i), color: .orange)
                    })
                }
            }
        }
    }
}

struct NumbersKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            NumbersKeyboardView()
                .environmentObject(CalculatorViewModel())
        }
    }
}
