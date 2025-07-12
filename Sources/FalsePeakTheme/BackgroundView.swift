//
//  BackgroundView.swift
//  Omega
//
//  Created by Renato Stauffer on 10.11.2024.
//

import SwiftUI

public struct BackgroundView<Content: View>: View {
    
    private let useSecondaryBackgroundColor: Bool
    let content: () -> Content
    
    public init(useSecondaryBackgroundColor: Bool = false, @ViewBuilder _ content: @escaping () -> Content) {
        self.useSecondaryBackgroundColor = useSecondaryBackgroundColor
        self.content = content
    }
    
    public var body: some View {
        ZStack(alignment: .top) {
            Color( useSecondaryBackgroundColor ? OmegaColors.Background.secondary : OmegaColors.Background.primary).edgesIgnoringSafeArea(.all)
            content()
        }
    }
}
