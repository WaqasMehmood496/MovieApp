//
//  Ex-Float.swift
//  BrainFit
//
//  Created by Mapple.pk on 25/04/2022.
//

import Foundation

extension Float {
    var cleanValue: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
