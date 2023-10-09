//
//  StarGateView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct StarGateView: View {
    var body: some View {
        VStack {
            HStack {
                VStack( alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Stargate")
                            .font(.custom(.medium, size: 14))
                        Image("star")
                        Spacer()
                        Text("6 other routes")
                            .font(.custom(.medium, size: 14))
                            .foregroundColor(AppColor.textColor)
                            .underline()
                        Image(systemName: "chevron.right")
                            .font(.system(size: 13))
                            .foregroundColor(AppColor.textColor)
                        Spacer()
                            .frame(width: 10)
                        Text("Change")
                            .font(.custom(.medium, size: 14))
                            .padding(5)
                            .background{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(AppColor.appColor.opacity(0.3))
                                
                            }
                    }
                    HStack {
                        Text("Output")
                            .font(.custom(.medium, size: 12))
                            .foregroundColor(.white.opacity(0.4))
                        Text("53.7643 MATIC ")
                            .font(.custom(.medium, size: 14))
                    }
                }
            }
            .padding(.vertical, 18)
            .padding(.horizontal, 15)
            .background{
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .foregroundColor(AppColor.rectBg)
            }
            .overlay{
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(AppColor.textColor, lineWidth: 1)
        }
        }
      
       
    }
}

struct StarGateView_Previews: PreviewProvider {
    static var previews: some View {
        StarGateView()
    }
}
