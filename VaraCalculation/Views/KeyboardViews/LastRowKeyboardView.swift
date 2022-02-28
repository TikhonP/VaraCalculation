//
//  LastRowKeyboardView.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import SwiftUI

struct LastRowKeyboardView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        HStack {
            Button(action: {
                viewModel.addNumber(num: "0")
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.orange)
                        .frame(width: 130, height: 60)
                    Text("0")
                        .padding()
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .frame(width: 120, height: 60, alignment: .leading)
                }
                .frame(width: 140, height: 70)
                .shadow(radius: 10)
            })
            
            Button(action: {
                viewModel.buttonPressed(but: Calculator.Buttons.comma)
            }, label: {
                ButtonView(caption: ",", color: .orange)
            })
        }
    }
}

struct LastRowKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        LastRowKeyboardView()
            .environmentObject(CalculatorViewModel())
    }
}
