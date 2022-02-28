//
//  ContentView.swift
//  VaraCalculation
//
//  Created by Тихон on 31.10.2020.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: CalculatorViewModel
    
    var body: some View {
        ZStack {
            Color("green")
            HStack {
                Spacer()
                Image("jirsaff")
                    .resizable()
                    .frame(width: 329.83, height: 714.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                CalculatorView()
                Spacer()
            }
        }
        .edgesIgnoringSafeArea([.top, .bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        return ContentView()
            .previewLayout(.fixed(width: 1024, height: 768))
    }
}

