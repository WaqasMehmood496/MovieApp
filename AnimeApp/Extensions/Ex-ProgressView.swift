//
//  Ex-ProgressView.swift
//  BrainFit
//
//  Created by Mapple.pk on 03/03/2022.
//

import Foundation
import UIKit

extension UISlider {
    func setThumbnailImage(imageName:String)  {
        self.setThumbImage(UIImage(named: imageName)!, for: .normal)
    }
}
