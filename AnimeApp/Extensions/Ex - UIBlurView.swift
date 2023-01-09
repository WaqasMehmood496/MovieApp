//
//  Ex - UIBlurView.swift
//  BrainFit
//
//  Created by Mapple.pk on 10/02/2022.
//

import Foundation
import UIKit

extension UIVisualEffectView {
    @IBInspectable
    var opacity: Float {
        get {
            return layer.opacity
        }
        set {
            layer.opacity = newValue
        }
    }
}
