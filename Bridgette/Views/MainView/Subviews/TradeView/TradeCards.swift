//
//  TradeCards.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct TradeCards: View {
    var sourceName: String = "ETH"
    var tokenName: String = "USDC"
    var sourceImg: String = "frame"
    var tokenImg: String = "usdCoin"
    var body: some View {
        HStack(alignment: .top){
            VStack(alignment: .leading) {
                Text("Source")
                    .font(.custom(.bold, size: 15))
                    .foregroundColor(.white.opacity(0.4))
                HStack {
                    Image("frame")
                        .resizable()
                    .frame(width: 20, height: 20)
                    Text(sourceName)
                        .font(.custom(.bold, size: 14))
                        Image(systemName: "chevron.down")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 150, alignment: .leading)
            Spacer()
            VStack(alignment: .leading) {
                Text("Token")
                    .font(.custom(.bold, size: 15))
                    .foregroundColor(.white.opacity(0.4))
                HStack {
                    Image("usdCoin")
                        .resizable()
                    .frame(width: 20, height: 20)
                    Text(tokenName)
                        .font(.custom(.bold, size: 15))
                        Image(systemName: "chevron.down")
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }
            }
            .frame(width: 150, alignment: .trailing)
           
          
        }
        .frame(maxWidth:.infinity, alignment: .leading)
        .padding(.vertical, 18)
        .padding(.horizontal, 20)
        .background{
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(AppColor.rectBg)
        }
    }
}

struct TradeCards_Previews: PreviewProvider {
    static var previews: some View {
        TradeCards()
    }
}
