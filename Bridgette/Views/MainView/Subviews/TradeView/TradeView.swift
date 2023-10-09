//
//  TradeView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct TradeView: View {
    @State var cardA: CGFloat = -50.0
    @State var cardB: CGFloat = 50.0
    @State var isToggled = false
    var body: some View {
    
        VStack {
            ZStack{
                    TradeCards()
                        .offset(y: isToggled ? 50 : -50)
                    TradeCards(sourceName: "POLY", tokenName: "MATIC", sourceImg: "polygon", tokenImg: "polygon")
                        .offset(y: isToggled ? -50 : 50)
                        
                    Image("swap")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .onTapGesture {
                            withAnimation {
                                isToggled.toggle()
                            }
                        }
                }
          
        }
        .frame(height: 130, alignment: .bottom)
        .padding(.bottom, 50)
     
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView()
    }
}
