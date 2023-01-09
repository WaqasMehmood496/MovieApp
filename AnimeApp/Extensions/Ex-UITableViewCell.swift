//
//  Ex-UITableViewCell.swift
//  BrainFit
//
//  Created by Mapple.pk on 14/02/2022.
//

import Foundation
import UIKit

extension UITableViewCell {
    func removeSelection(cell:UITableViewCell) {
        let backView = UIView()
        backView.backgroundColor = .clear
        cell.selectedBackgroundView = backView
    }
}
