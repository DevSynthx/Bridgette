//
//  GasPumpView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct GasPumpView: View {
    @State var isSoundOn: Bool = true
    @State var circleOffset: CGFloat = 8.0
    var body: some View {
        HStack{
            HStack {
            Text("Gas pump")
                    .font(.custom(.medium, size: 16))
                ZStack {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .foregroundColor(AppColor.toggleb)
                        .frame(width: 40, height: 20)
                    
                  Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                        .offset(x: circleOffset)
                        .gesture(
                         DragGesture()
                            .onChanged({ val in
                                if(val.startLocation.x > 15) {
                                    withAnimation {
                                        circleOffset = -8.0
                                    }
                                }
                                else {
                                    withAnimation {
                                        circleOffset = 8.0
                                    }
                                    
                                }
                            })
                        )
                }
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            }
            .padding(.horizontal, 13)
            .padding(.vertical, 12)
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(AppColor.appPrimary.opacity(0.5))
                
            }
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(AppColor.appPrimary, lineWidth: 1)
            }
            Spacer()
            HStack{
                Image("question")
                    .resizable()
                    .frame(width: 20, height: 20)
                Spacer()
                    .frame(width: 10)
                Text("Need help? click me.")
                    .font(.custom(.bold, size: 14))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.vertical, 13)
            .background{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(AppColor.rectBg)
                
            }
        }
    }
}

struct GasPumpView_Previews: PreviewProvider {
    static var previews: some View {
        GasPumpView()
    }
}
