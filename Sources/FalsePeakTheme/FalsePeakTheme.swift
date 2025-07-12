// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import CoreGraphics
import CoreText

public struct FalsePeakTheme {
    
    public static func registerFonts() {
        OmegaFont.allCases.forEach {
            registerFont(bundle: .module, fontName: $0.resourceName, fontExtension: "otf")
        }
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
    
}
