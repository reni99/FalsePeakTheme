//
//  RangerColor.swift
//  Ranger
//
//  Created by Renato Stauffer on 18.02.2024.
//

import Foundation
import UIKit

public enum OmegaColor: RangerColorRepresentable {
    
    case black(OmegaBlack)
    case white(OmegaWhite)
    case red(OmegaRed)
    case indigo(OmegaIndigo)
    case instagram(Instagram)
    case green(OmegaGreen)
    case purple(OmegaPurple)
    
    public var rawColor: UIColor {
        switch self {
        case let .indigo(color):
            return color.rawColor
        case let .red(color):
            return color.rawColor
        case let .black(color):
            return color.rawColor
        case let .white(color):
            return color.rawColor
        case let .instagram(color):
            return color.rawColor
        case let .green(color):
            return color.rawColor
        case let .purple(color):
            return color.rawColor
        }
    }
    
    var alpha64: UIColor {
        rawColor.withAlphaComponent(0.64)
    }
    
    var alpha24: UIColor {
        rawColor.withAlphaComponent(0.24)
    }
}

public enum OmegaIndigo: String, RangerColorRepresentable {
    case v100 = "OmegaIndigo100"
    case v200 = "OmegaIndigo200"
    case v300 = "OmegaIndigo300"
    case v400 = "OmegaIndigo400"
    case v500 = "OmegaIndigo500"
    case v600 = "OmegaIndigo600"
    case v700 = "OmegaIndigo700"
    case v800 = "OmegaIndigo800"
    
    public var rawColor: UIColor {
        UIColor(namedApperanceColor: rawValue)!
    }
}

public enum OmegaBlack: String, RangerColorRepresentable {
    case v100 = "OmegaBlack100"
    case v200 = "OmegaBlack200"
    case v300 = "OmegaBlack300"
    case v400 = "OmegaBlack400"
    case v500 = "OmegaBlack500"
    case v600 = "OmegaBlack600"
    case v700 = "OmegaBlack700"
    case v800 = "OmegaBlack800"
    
    public var rawColor: UIColor {
        UIColor(namedApperanceColor: rawValue)!
    }
}

public enum OmegaRed: String, RangerColorRepresentable {
    case v100 = "OmegaRed100"
    case v200 = "OmegaRed200"
    case v300 = "OmegaRed300"
    case v400 = "OmegaRed400"
    case v500 = "OmegaRed500"
    case v600 = "OmegaRed600"
    case v700 = "OmegaRed700"
    case v800 = "OmegaRed800"
    
    public var rawColor: UIColor {
        UIColor(namedApperanceColor: rawValue)!
    }
}

public enum OmegaWhite: String, RangerColorRepresentable {
    case v100 = "OmegaWhite100"
    case v200 = "OmegaWhite200"
    case v300 = "OmegaWhite300"
    case v400 = "OmegaWhite400"
    case v500 = "OmegaWhite500"
    case v600 = "OmegaWhite600"
    case v700 = "OmegaWhite700"
    case v800 = "OmegaWhite800"
    
    public var rawColor: UIColor {
        UIColor(namedApperanceColor: rawValue)!
    }
}

public enum Instagram: String, RangerColorRepresentable {
    case pink = "InstagramPink"
    case orange = "InstagramOrange"
    case rose = "InstagramRose"
    case blue = "InstagramBlue"
    
    public var rawColor: UIColor {
        UIColor(namedApperanceColor: rawValue)!
    }
}

public enum OmegaGreen: String, RangerColorRepresentable {
    case v500 = "OmegaGreen500"
    
    public var rawColor: UIColor {
        UIColor(namedApperanceColor: rawValue)!
    }
}

public enum OmegaPurple: String, RangerColorRepresentable {
    case v500 = "OmegaPurple500"
    
    public var rawColor: UIColor {
        UIColor(namedApperanceColor: rawValue)!
    }
}
