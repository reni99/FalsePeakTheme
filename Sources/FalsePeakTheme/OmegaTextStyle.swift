//
//  OmegaTextStyle.swift
//  Omega
//
//  Created by Renato Stauffer on 10.11.2024.
//

import Foundation
import SwiftUI
import UIKit

public extension UIFont {

    enum Style {
        case bold(Size)
        case standard(Size)
    }
    
    enum Size: CGFloat {
        case title1 = 32
        case title2 = 28
        case title3 = 22
        case title4 = 18
        case body = 16
        case caption = 14
        case small = 12
    }

    static func font(for style: Style) -> UIFont {
        switch style {
        case let .bold(size):
            return UIFont(name: OmegaFont.bold.name, size: size.rawValue)!
        case let .standard(size):
            return UIFont(name: OmegaFont.regular.name, size: size.rawValue)!
        }
    }
    
    static func font(size: CGFloat, isBold: Bool = false) -> UIFont {
        if isBold {
            return UIFont(name: OmegaFont.bold.name, size: size)!
        } else {
            return UIFont(name: OmegaFont.regular.name, size: size)!
        }
    }

    static var title1: UIFont { font(for: .bold(.title1)) }
    static var title2: UIFont { font(for: .bold(.title2)) }
    static var title3: UIFont { font(for: .bold(.title3)) }
    static var title4: UIFont { font(for: .bold(.title4)) }
    static var body: UIFont { font(for: .standard(.body)) }
    static var caption: UIFont { font(for: .standard(.caption)) }
    static var captionEm: UIFont { font(for: .bold(.caption)) }
    static var small: UIFont { font(for: .standard(.small)) }
    static var smallEm: UIFont { font(for: .bold(.small)) }
    static var bodyEm: UIFont { font(for: .bold(.body)) }
}

public enum TextType: String, Identifiable, CaseIterable {
    
    public var id: String {
        rawValue
    }
    
    case title1
    case title2
    case title3
    case title4
    case body
    case bodyEm
    case caption
    case small
}

public extension Text {
    @MainActor func textStyle(
        _ type: TextType,
        isSecondary: Bool = false,
        foregroundColorOverwrite: Color? = nil,
        sizeOverwrite: CGFloat? = nil
    ) -> some View {
        modifier(OmegaTextStyle(
            textType: type,
            isSecondary: isSecondary,
            foregroundColorOverwrite: foregroundColorOverwrite,
            sizeOverwrite: sizeOverwrite
        ))
    }
}

struct OmegaTextStyle: ViewModifier {
    
    let textType: TextType
    let isSecondary: Bool
    let foregroundColorOverwrite: Color?
    let sizeOverwrite: CGFloat?
    
    init(
        textType: TextType,
        isSecondary: Bool,
        foregroundColorOverwrite: Color?,
        sizeOverwrite: CGFloat?
    ) {
        self.textType = textType
        self.isSecondary = isSecondary
        self.foregroundColorOverwrite = foregroundColorOverwrite
        self.sizeOverwrite = sizeOverwrite
    }
    
    func body(content: Content) -> some View {
        
        let text = getColoredView(content: content)
        
        switch textType {
        case .title1:
            return text
                .font(Font.custom(OmegaFont.bold.name, fixedSize: sizeOverwrite ?? 32))
        case .title2:
            return text
                .font(Font.custom(OmegaFont.bold.name, fixedSize: sizeOverwrite ?? 28))
        case .title3:
            return text
                .font(Font.custom(OmegaFont.bold.name, fixedSize: sizeOverwrite ?? 22))
        case .title4:
            return text
                .font(Font.custom(OmegaFont.bold.name, fixedSize: sizeOverwrite ?? 18))
        case .body:
            return text
                .font(Font.custom(OmegaFont.regular.name, fixedSize: sizeOverwrite ?? 16))
        case .bodyEm:
            return text
                .font(Font.custom(OmegaFont.bold.name, fixedSize: sizeOverwrite ?? 16))
        case .caption:
            return text
                .font(Font.custom(OmegaFont.regular.name, fixedSize: sizeOverwrite ?? 14))
        case .small:
            return text
                .font(Font.custom(OmegaFont.regular.name, fixedSize: sizeOverwrite ?? 12))
        }
    }
    
    @ViewBuilder
    private func getColoredView(content: Content) -> some View {
        if let foregroundColorOverwrite {
            content.foregroundColor(foregroundColorOverwrite)
        } else {
            content
                .foregroundColor(
                    Color(isSecondary ? OmegaColors.Text.secondary : OmegaColors.Text.primary)
                )
        }
    }
}
