//
//  SelectRouteDialogView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct SelectRouteDialogView: View {
    @State var offset: CGFloat = 0.0
    @Binding var outSide: CGFloat
    var action: () -> ()
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.5)
               // .blur(radius: 10)
                .background(.ultraThinMaterial.opacity(0.8))
            
            ScrollView (.vertical, showsIndicators: false) {
                Spacer()
                    .frame(height: 100)
                VStack {
                    VStack(alignment: .leading) {
                        TopView(action: action)
                        Spacer()
                            .frame(height: 20)
                        ScrollView (.vertical, showsIndicators: false){
                            StargateCardView()
                            Spacer()
                                .frame(height: 30)
                            ContextCardView()
                        }
                       .frame(height: 430)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .background{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(AppColor.dialogbg)
                    }
                    Spacer()
                        .frame(height: 20)
                    ReviewButton(title: "Confirm and continue", action: action)

                }
//                .gesture(
//                    DragGesture()
//                        .onChanged({ val in
//
//                            let minValue = 41.66666158040364
//                            let maxValue = 46.33332824707031
//                            let x = 44.33332824707031
//                            print(val.location.y)
//                            if minValue...maxValue ~= x {
//                                withAnimation(.spring()){
//                                    outSide = 1000
//                                }
//
//                            } else {
//                                print("x is outside the range")
//                            }
//
//                        })
//
//                )
            }
            
        }
        .ignoresSafeArea()
    }
}

struct SelectRouteDialogView_Previews: PreviewProvider {
    static var previews: some View {
        SelectRouteDialogView(outSide: .constant(1000), action: {})
    }
}
