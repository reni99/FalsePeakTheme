//
//  VisibleButton.swift
//  Omega
//
//  Created by Josep Bordes on 09.02.2025.
//

import SwiftUI

struct VisibleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(OmegaColors.Button.visible))
            .cornerRadius(20)
            .modifier(OmegaTextStyle(
                textType: .bodyEm,
                isSecondary: false,
                foregroundColorOverwrite: Color(OmegaColors.Button.visibleText),
                sizeOverwrite: nil
            ))
    }
}

extension ButtonStyle where Self == VisibleButton {
    static var visibleButton: Self { Self() }
}
