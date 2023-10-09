//
//  ReviewButton.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 08/10/2023.
//

import SwiftUI

struct ReviewButton: View {
    var title: String = "Review bridge"
    var action: () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.custom(.bold, size: 20))
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundColor(.white)
                .background{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(AppColor.appColor)
                }
        }
    }
}

struct ReviewButton_Previews: PreviewProvider {
    static var previews: some View {
        ReviewButton(action: {})
    }
}
