//
//  ContentView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 07/10/2023.
//

import SwiftUI

struct MainView: View {
    @State var showRoute: Bool = false
    @State private var isAnimating = false
    @State var offset: CGFloat = 1000
    var body: some View {
        ZStack {
            
            VStack {
                HeaderView()
                ScrollView(showsIndicators: false) {
                    Group {
                        Spacer()
                            .frame(height: 20)
                        GasPumpView()
                        Spacer()
                            .frame(height: 20)
                        TradeView()
                        Spacer()
                            .frame(height: 20)
                        RecieveSendView()
                        Spacer()
                            .frame(height: 15)
                        StarGateView()
                        
                    }
                    
                    Group {
                        Spacer()
                            .frame(height: 15)
                        ReviewButton(action: {
                            print("here")
                            withAnimation(.spring()){
                                showRoute = true
                                offset = 0
                            }
                            
                        })
                        
                        
                    }
                }
                .padding(.horizontal, 20)
                
                HStack{
                    HStack (spacing: 20) {
                        Text("Teleport")
                            .font(.custom(.bold, size: 16))
                            .padding(10)
                            .background(Color.white.opacity(0.4))
                            .cornerRadius(6)
                        
                        Text("Buy crypto")
                            .font(.custom(.medium, size: 16))
                            .foregroundColor(.white.opacity(0.4))
                    }
                    .padding(13)
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(AppColor.rectBg)
                    }
                    
                    Image(systemName: "chevron.up")
                        .padding(25)
                        .background{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(AppColor.rectBg)
                        }
                    
                    Image("avatar")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .padding(10)
                        .background{
                            Circle()
                                .foregroundColor(AppColor.rectBg)
                        }
                }
                .padding(.top, 20)
                .padding(.bottom, 30)
                .frame(maxWidth: .infinity)
                .background{
                    Rectangle()
                        .foregroundColor(.black)
                }
            }
            .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .top)
            .edgesIgnoringSafeArea(.bottom)
            
            
            SelectRouteDialogView(outSide: $offset, action: {
                withAnimation(.spring()) {
                    offset = 1000
                    showRoute = false
                }
                
            })
            .offset(y: offset)
            
        }
    
    
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


