//
//  DeleteButton.swift
//  Omega
//
//  Created by Renato Stauffer on 05.05.2025.
//

import SwiftUI

struct DeleteButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(OmegaColors.Component.destructiveButtonBackground))
            .cornerRadius(20)
            .modifier(OmegaTextStyle(
                textType: .bodyEm,
                isSecondary: false,
                foregroundColorOverwrite: Color(OmegaColor.white(.v100).rawColor),
                sizeOverwrite: nil
            ))
    }
}

extension ButtonStyle where Self == DeleteButton {
    static var delete: Self { Self() }
}
