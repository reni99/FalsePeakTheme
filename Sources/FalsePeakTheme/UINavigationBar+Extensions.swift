//
//  UINavigationBar+Extensions.swift
//  Omega
//
//  Created by Renato Stauffer on 10.11.2024.
//

import Foundation
import UIKit


public extension UINavigationBar {
    
    static func setAppearance() {
        
        let foreground = OmegaColors.Component.navigationBarForeground
        
        setNavbarAppearance(
            backgroundColor: OmegaColors.Component.navigationBar,
            foregroundColor: foreground,
            navigationBarFont: .title4,
            barButtonFont: .systemFont(ofSize: 17)
        )
    }

    private static func setNavbarAppearance(
        backgroundColor: UIColor,
        foregroundColor: UIColor,
        navigationBarFont: UIFont,
        barButtonFont: UIFont
    ) {
        
        let appearance = UINavigationBar.createNavbarAppearance(
            shadow: nil,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            navigationBarFont: navigationBarFont,
            barButtonFont: barButtonFont
        )
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = foregroundColor
    }
    
    private static func createNavbarAppearance(
        shadow: UIColor?,
        backgroundColor: UIColor,
        foregroundColor: UIColor,
        navigationBarFont: UIFont,
        barButtonFont: UIFont
    ) -> UINavigationBarAppearance {
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = backgroundColor
        appearance.backgroundEffect = .none
        appearance.shadowImage = nil
        appearance.shadowColor = shadow
        
        appearance.titleTextAttributes = [
            .foregroundColor: foregroundColor,
            .font: navigationBarFont
        ]
        
        appearance.largeTitleTextAttributes = [
            .foregroundColor: foregroundColor,
            .font: navigationBarFont.withSize(16)
        ]
        
        appearance.buttonAppearance = UIBarButtonItem.createBarButtonAppearance(
            foregroundColor: foregroundColor,
            font: barButtonFont
        )
        
        appearance.doneButtonAppearance = UIBarButtonItem.createBarButtonAppearance(
            foregroundColor: foregroundColor,
            font: barButtonFont
        )
        
        return appearance
    }
}

extension UIBarButtonItem {
    
    static func createBarButtonAppearance(foregroundColor: UIColor, font: UIFont) -> UIBarButtonItemAppearance {
        
        let appearance = UIBarButtonItemAppearance()
        
        let titleAttributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: foregroundColor,
            .font: font
        ]
        
        appearance.normal.titleTextAttributes = titleAttributes
        appearance.highlighted.titleTextAttributes = titleAttributes
        
        return appearance
    }
}
