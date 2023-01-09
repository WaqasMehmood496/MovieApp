//
//  Ex-UITabbar.swift
//  BrainFit
//
//  Created by Mapple.pk on 02/03/2022.
//

import Foundation
import UIKit

extension UITabBar {
    override open var traitCollection: UITraitCollection {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return UITraitCollection(horizontalSizeClass: .compact)
        }
        return super.traitCollection
    }
}
