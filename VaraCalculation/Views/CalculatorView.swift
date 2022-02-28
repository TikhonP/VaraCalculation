//
//  CalculatorView.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import SwiftUI

struct CalculatorView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 35)
                    .frame(width: 70*4, height: 70)
                    .shadow(radius: 10)
                    .foregroundColor(.black)
                HStack {
                    Text(viewModel.showValue())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                        .frame(width: 70*3, height: 70, alignment: .trailing)
                    Button(action: {
                        viewModel.delete()
                    }, label: {
                        Image(systemName: "delete.left")
                            .font(.system(size: 35))
                            .foregroundColor(.white)
                            
                    })
                }
            }
            
            KeyboardView()
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .environmentObject(CalculatorViewModel())
    }
}
