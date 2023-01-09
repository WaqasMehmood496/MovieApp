//
//  SettingsModel.swift
//  AnimeApp
//
//  Created by Mapple.pk on 09/01/2023.
//

import Foundation

struct SettingModel {
    
    var iconName:String = ""
    var optionTitle:String = ""
    
    init() {
    }
    
    init(iconName: String, optionTitle: String) {
        self.iconName = iconName
        self.optionTitle = optionTitle
    }
}
