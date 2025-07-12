//
//  PlainButton.swift
//  Omega
//
//  Created by Josep Bordes on 09.02.2025.
//

import SwiftUI

struct PlainButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(OmegaColors.Button.plain))
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(OmegaColors.Button.plainBorder), lineWidth: 2)
            )
            .modifier(OmegaTextStyle(
                textType: .bodyEm,
                isSecondary: false,
                foregroundColorOverwrite: Color(OmegaColors.Button.plainText),
                sizeOverwrite: nil
            ))
    }
}

extension ButtonStyle where Self == PlainButton {
    static var plainButton: Self { Self() }
}
