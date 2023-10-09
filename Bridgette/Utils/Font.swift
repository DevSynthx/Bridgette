//
//  Font.swift
//  Bridgette
//
//  Created by Inyene Etoedia on 07/10/2023.
//

import Foundation
import SwiftUI


enum FontType {
    case medium
    case bold
}

extension FontType {
    var name :  String {
        switch self {
        case .bold:
            return "MabryPro-Bold"
        case .medium:
            return "MabryPro-Medium"
        }
        
    }
}

extension Font {
    static func custom (_ font: FontType, size: CGFloat) -> Font {
        return Font.custom(font.name, size: size)
        
    }
}
