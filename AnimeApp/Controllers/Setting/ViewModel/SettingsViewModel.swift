//
//  SettingsViewModel.swift
//  AnimeApp
//
//  Created by Mapple.pk on 09/01/2023.
//

import Foundation

class SettingsViewModel {
    
    var dataArray:[SettingModel] = []
    
    init(){
        dataArray = [
            SettingModel(iconName: "AboutUs", optionTitle: "About Us"),
            SettingModel(iconName: "ContactUs", optionTitle: "Contact Us"),
            SettingModel(iconName: "ContactUs", optionTitle: "Share the app items")
        ]
    }
    
}
