//
//  UIColor+Extensions.swift
//  Ranger
//
//  Created by Renato Stauffer on 18.02.2024.
//

import Foundation
import UIKit

public extension UIColor {
    
    private class AssetLoader {}
    
    convenience init?(namedApperanceColor colorName: String) {
        self.init(named: colorName, in: .module, compatibleWith: UITraitCollection.current)
    }
    
    convenience init(dark: OmegaColor, light: OmegaColor) {
        self.init { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return dark.rawColor
            default:
                return light.rawColor
            }
        }
    }
    
    convenience init(dark: UIColor, light: UIColor) {
        self.init { traitCollection in
            switch traitCollection.userInterfaceStyle {
            case .dark:
                return dark
            default:
                return light
            }
        }
    }
}
