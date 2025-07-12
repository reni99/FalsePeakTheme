//
//  VisibleCapsuleButton.swift
//  Omega
//
//  Created by Josep Bordes on 16.02.2025.
//

import SwiftUI

struct VisibleCapsuleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.marginHalf)
            .background(Color(OmegaColors.Button.visible))
            .clipShape(Capsule())
            .modifier(OmegaTextStyle(
                textType: .bodyEm,
                isSecondary: false,
                foregroundColorOverwrite: Color(OmegaColors.Button.visibleText),
                sizeOverwrite: nil
            ))
            .textCase(.uppercase)
    }
}

extension ButtonStyle where Self == VisibleCapsuleButton {
    static var visibleCapsuleButton: Self { Self() }
}
