//
//  OmegaFont.swift
//  Omega
//
//  Created by Renato Stauffer on 10.11.2024.
//

import Foundation

public enum OmegaFont: String, CaseIterable {
    case regular = "SFProDisplay-Regular"
    case bold = "SFProDisplay-Bold"
    case semiBold = "SFProDisplay-Semibold"
    
    public var name: String {
        rawValue
    }
    
    public var resourceName: String {
        switch self {
        case .regular:
            return "SF-Pro-Display-Regular"
        case .bold:
            return "SF-Pro-Display-Bold"
        case .semiBold:
            return "SF-Pro-Display-Semibold"
        }
    }
}
