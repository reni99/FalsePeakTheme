//
//  OmegaFont.swift
//  Omega
//
//  Created by Renato Stauffer on 10.11.2024.
//

import Foundation

public enum OmegaFont: String {
    case regular = "SFProDisplay-Regular"
    case bold = "SFProDisplay-Bold"
    case semiBold = "SFProDisplay-Semibold"
    
    public var name: String {
        rawValue
    }
}
