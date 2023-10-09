//
//  TopView.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct TopView: View {
    var action: () -> ()
    var body: some View {
        VStack{
            Image(systemName: "xmark")
                .font(.system(size: 12))
                .foregroundColor(.black)
                .padding(4)
                .background{
                    Circle()
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .onTapGesture(perform: action)
            Spacer()
                .frame(height: 20)
            HStack{
                Text("Select route")
                    .font(.custom(.bold, size: 17))
                
                Text("6")
                    .font(.custom(.bold, size: 15))
                    .padding(8)
                    .background{
                        Circle()
                            .foregroundColor(.white.opacity(0.2))
                    }
                Spacer()
                Text("Sort by")
                    .font(.custom(.bold, size: 17))
                Image(systemName: "chevron.down")
                    .font(.system(size: 15))
                Spacer()
                    .frame(width: 10)
                Text("Fastest")
                    .font(.custom(.bold, size: 17))
                    .foregroundColor(.white.opacity(0.4))
                
            }
            HStack {
                Image("like")
                    .resizable()
                    .frame(width: 18, height: 18)
                
                Text("We Already Selected the best route for you")
                    .font(.custom(.bold, size: 15))
                    .foregroundColor(AppColor.textColor)
            }
            
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(action: {})
    }
}
