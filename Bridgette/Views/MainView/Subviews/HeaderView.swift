//
//  HeaderView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack{
                Image("robot")
                Spacer()
                Image("sun")
                    .padding(10)
                    .background{
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .foregroundColor(AppColor.appPrimary)
                    }
                
                Image("receipt")
                    .padding(10)
                    .background{
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .foregroundColor(AppColor.appPrimary)
                    }
                Image("frame")
                    .resizable()
                    .padding(3)
                    .frame(width: 30, height: 30)
                    .padding(4)
                    .background{
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .foregroundColor(AppColor.appPrimary)
                    }
            }
            
            HStack {
                Text("Teleport")
                    .font(.custom(.medium, size: 18))
                Image("info")
                Spacer()
                Image("setting")
                    .background{
                        Circle()
                            .foregroundColor(AppColor.appPrimary)
                            .frame(width: 23, height: 23)
                    }
                
            }
        }
          .padding(.horizontal, 20)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
