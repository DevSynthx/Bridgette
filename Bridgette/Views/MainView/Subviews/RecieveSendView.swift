//
//  RecieveSendView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct RecieveSendView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Recipient address")
                    .font(.custom(.medium, size: 14))
                .foregroundColor(AppColor.textColor)
                
                Image(systemName: "plus")
                    .font(.system(size: 10))
                    .foregroundColor(.black)
                    .padding(.all, 2)
                    .background{
                        Circle()
                            .foregroundColor(AppColor.textColor)
                    }
            }
            Spacer()
                .frame(height: 5)
            HStack{
                Text("Send")
                    .font(.custom(.medium, size: 14.5))
                    .foregroundColor(.white.opacity(0.4))
                Spacer()
                Text("$30.00")
                    .font(.custom(.medium, size: 14))
                    .foregroundColor(.white.opacity(0.4))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 7)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(AppColor.rectBg)
                    }
                
                HStack(spacing: 5) {
                    Image("wallet")
                        .font(.system(size: 10))
                    Text("30.00")
                        .font(.custom(.medium, size: 14))
                        .foregroundColor(.white.opacity(0.4))

                }
                .padding(.vertical, 6)
                .padding(.horizontal, 7)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(AppColor.rectBg)
            }
                Text("Max")
                    .font(.custom(.medium, size: 14))
                    .foregroundColor(AppColor.textColor)
                    .padding(.vertical, 6)
                    .padding(.horizontal, 7)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(AppColor.rectBg)
                    }
                
            }
            
            HStack {
                
                Text("300")
                    .font(.custom(.medium, size: 14))
                Spacer()
                Text("Min 10")
                    .font(.custom(.medium, size: 14))
                    .foregroundColor(.white.opacity(0.4))
                
            }
            .padding(.vertical, 18)
            .padding(.horizontal, 20)
            .background{
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(AppColor.rectBg)
            }
            
            Spacer()
                .frame(height: 5)
            HStack{
                Text("Receive")
                    .font(.custom(.medium, size: 14.5))
                    .foregroundColor(.white.opacity(0.4))
                Spacer()
                Text("$29.50")
                    .font(.custom(.medium, size: 14))
                    .foregroundColor(.white.opacity(0.4))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 7)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(AppColor.rectBg)
                    }
                
                HStack(spacing: 5) {
                    Image("wallet")
                        .font(.system(size: 10))
                    Text("0")
                        .font(.custom(.medium, size: 14))
                        .foregroundColor(.white.opacity(0.4))

                }
                .padding(.vertical, 6)
                .padding(.horizontal, 7)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(AppColor.rectBg)
            }
               
                
            }
            HStack {
                Text("53.7643")
                    .font(.custom(.medium, size: 14))
                Spacer()
            }
            .padding(.vertical, 18)
            .padding(.horizontal, 20)
            .background{
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(AppColor.rectBg)
            }
          
        }
    }
}

struct RecieveSendView_Previews: PreviewProvider {
    static var previews: some View {
        RecieveSendView()
    }
}
