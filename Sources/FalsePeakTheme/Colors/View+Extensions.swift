//
//  View+Extensions.swift
//  FalsePeakTheme
//
//  Created by Renato Stauffer on 12.07.2025.
//

import SwiftUI

public extension View {
    func primaryBackground() -> some View {
        self.background(Color.primaryBackground)
    }
    
    func secondaryBackground() -> some View {
        self.background(Color.secondaryBackground)
    }
}
