//
//  RangerColors.swift
//  Ranger
//
//  Created by Renato Stauffer on 17.02.2024.
//

import UIKit
import SwiftUI

public enum OmegaColors {
    public enum Basic {
        public static let accent = UIColor(
            dark: .indigo(.v100),
            light: .black(.v100)
        )
    }
    
    public enum TextField {
        public static let background = UIColor(
            dark: .black(.v100),
            light: .white(.v500)
        )
        
        public static let border = UIColor(
            dark: .black(.v800),
            light: .black(.v300)
        )
    }
    
    public enum Button {
        public static let visible = UIColor(
            dark: .indigo(.v100),
            light: .indigo(.v800)
        )
        
        public static let visibleText = UIColor(
            dark: .black(.v700),
            light: .white(.v100)
        )
        
        public static let plain = UIColor(
            dark: .black(.v300),
            light: .white(.v500)
        )
        
        public static let plainBorder = UIColor(
            dark: .black(.v100),
            light: .black(.v100)
        )
        
        public static let plainText = UIColor(
            dark: .white(.v800),
            light: .black(.v700)
        )
    }
    
    public enum Text {
        public static let primary = UIColor(
            dark: .white(.v100),
            light: .black(.v600)
        )
        
        public static let secondary = UIColor(
            dark: .white(.v700),
            light: .black(.v200)
        )
    }
    
    public enum Background {
        public static let primary = UIColor(
            dark: .black(.v500),    
            light: .white(.v200)
        )
        
        public static let secondary = UIColor(
            dark: .black(.v300),
            light: .white(.v500)
        )
    }
    
    public enum Component {

        // MARK: Buttons - Primary
        
        public static let primaryButtonForeground = UIColor(
            dark: .white(.v300),
            light: .white(.v300)
        )
        
        public static let primaryButtonForegroundDisabled = UIColor(
            dark: OmegaColor.white(.v300).alpha64,
            light: OmegaColor.white(.v300).alpha64
        )
        
        public static let primaryButtonBackground = UIColor(
            dark: OmegaColor.black(.v300),
            light: OmegaColor.black(.v300)
        )
        
        public static let primaryButtonBackgroundDisabled = UIColor(
            dark: OmegaColor.black(.v300),
            light: OmegaColor.black(.v300)
        )
        
        // MARK: Buttons - Destructive
        
        public static let destructiveButtonForeground = UIColor(
            dark: .white(.v300),
            light: .white(.v300)
        )
        
        public static let destructiveButtonForegroundDisabled = UIColor(
            dark: OmegaColor.white(.v300).alpha64,
            light: OmegaColor.white(.v300).alpha64
        )
        
        public static let destructiveButtonBackground = UIColor(
            dark: .red(.v600),
            light: .red(.v600)
        )
        
        public static let destructiveButtonBackgroundDisabled = UIColor(
            dark: .red(.v400),
            light: .red(.v400)
        )
        
        // MARK: Buttons - Secondary
        
        public static let secondaryButtonBackgroundDisabled = UIColor(
            dark: OmegaColor.black(.v300),
            light: OmegaColor.black(.v300)
        )
        
        public static let secondaryButtonForeground = UIColor(
            dark: .white(.v300),
            light: .white(.v300)
        )
        
        public static let secondaryButtonForegroundDisabled = UIColor(
            dark: OmegaColor.white(.v300).alpha64,
            light: OmegaColor.white(.v300).alpha64
        )
        
        public static let secondaryButtonBackground = UIColor(
            dark: OmegaColor.black(.v300),
            light: OmegaColor.black(.v300)
        )
        
        // MARK: Alert
        
        public static let alertBackground = UIColor(
            dark: .black(.v300),
            light: .white(.v700)
        )
        
        // MARK: Badge
        
        public static let badgeForeground = UIColor(
            dark: .white(.v100),
            light: .white(.v100)
        )
        
        public static let badgeBackgroundArchive = UIColor(
            dark: .purple(.v500),
            light: .purple(.v500)
        )
        
        public static let badgeBackgroundNew = UIColor(
            dark: .green(.v500),
            light: .green(.v500)
        )
            
        // MARK: Navigaitonbar
        
        public static let navigationBar = UIColor(
            dark: .black(.v600),
            light: .white(.v600)
        )
        
        public static let navigationBarForeground = UIColor(
            dark: .white(.v100),
            light: .black(.v600)
        )
        
        public static let tabBarForegroundUnselected = UIColor(
            dark: .black(.v300),
            light: .black(.v300)
        )
        
        public static let tabBarForegroundSelected = UIColor(
            dark: .white(.v100),
            light: .black(.v700)
        )
        
        public static let tabBarBackground = UIColor(
            dark: .black(.v600),
            light: .white(.v600)
        )
        
        public static let instagramButtonBorderLeading = UIColor(
            dark: .instagram(.pink),
            light: .instagram(.pink)
        )
        
        public static let instagramButtonBorderLeadingMiddle = UIColor(
            dark: .instagram(.blue),
            light: .instagram(.blue)
        )
        
        public static let instagramButtonBorderTrailingMiddle = UIColor(
            dark: .instagram(.rose),
            light: .instagram(.rose)
        )
        
        public static let instagramButtonBorderTrailing = UIColor(
            dark: .instagram(.orange),
            light: .instagram(.orange)
        )
        
    }
}
