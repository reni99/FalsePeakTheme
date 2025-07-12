//
//  HapticManager.swift
//  Commons
//
//  Created by Renato Stauffer on 07.05.2025.
//

import UIKit
import AVFoundation

@MainActor
public final class HapticManager: Sendable {
    public init() {}

    public func impact(style: UIImpactFeedbackGenerator.FeedbackStyle = .medium) {
        let g = UIImpactFeedbackGenerator(style: style)
        g.prepare()
        g.impactOccurred()
    }

    public func notification(_ type: UINotificationFeedbackGenerator.FeedbackType) {
        let g = UINotificationFeedbackGenerator()
        g.prepare()
        g.notificationOccurred(type)
    }

    public func selection() {
        let g = UISelectionFeedbackGenerator()
        g.prepare()
        g.selectionChanged()
    }
}

