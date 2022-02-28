//
//  ButtonView.swift
//  VaraCalculation
//
//  Created by Тихон on 01.11.2020.
//

import SwiftUI

struct ButtonView: View {
    let caption: String
    let color: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            Text(caption)
                .foregroundColor(.white)
                .font(.system(size: 40))
        }
        .frame(width: 70, height: 70)
        .shadow(radius: 10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(caption: "1", color: .orange)
    }
}
