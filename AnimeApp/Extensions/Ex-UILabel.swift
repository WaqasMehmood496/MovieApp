//
//  Ex-UILabel.swift
//  BrainFit
//
//  Created by Mapple.pk on 15/08/2022.
//

import Foundation
import UIKit

extension UILabel {
    func underline() {
        let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue]
        let underlineAttributedString = NSAttributedString(string: "Add", attributes: underlineAttribute)
        self.attributedText = underlineAttributedString
    }
}
