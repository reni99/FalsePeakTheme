//
//  FalsePeakAssets.swift
//  FalsePeakTheme
//
//  Created by Renato Stauffer on 12.07.2025.
//

import Foundation
import SwiftUI

public struct FalsePeakAssets {
    
    public enum Tab {
        public static let homeTabSelected = Image("TabHomeSelected", bundle: .module)
        public static let homeTabDeselected = Image("TabHomeDeselected", bundle: .module)
        public static let settingTabSelected = Image("TabSettingsSelected", bundle: .module)
        public static let settingTabDeselected = Image("TabSettingsDeselected", bundle: .module)
    }
    
    public enum Icon {
        public static let trash = Image("trash", bundle: .module)
        public static let close = Image("close", bundle: .module)
        public static let checkmark = Image("checkmark", bundle: .module)
        public static let bell = Image("bell", bundle: .module)
        public static let arrowLeft = Image("arrow-left", bundle: .module)
    }
    
    public enum Action {
        public static let logout = Image("Logout", bundle: .module)
    }
    
    public enum ThemeSelection {
        public static let lightScreen = Image("theme-selector-light", bundle: .module)
        public static let darkScreen = Image("theme-selector-dark", bundle: .module)
    }
}
