//
//  Ex-UINavigationBae.swift
//  AnimeApp
//
//  Created by Mapple.pk on 08/01/2023.
//

import Foundation
import UIKit

extension UINavigationController {
    
    func setNavigationBar(title:String) {
        
        self.navigationBar.tintColor = .black
        self.navigationBar.backgroundColor = UIColor(named: "AppTheam")
        if #available(iOS 13.0, *) {
            self.navigationBar.standardAppearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        } else {
            self.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
        }
        self.title = title
        
    }
    
}
