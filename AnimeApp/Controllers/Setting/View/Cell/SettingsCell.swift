//
//  SettingsCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 09/01/2023.
//

import UIKit

class SettingsCell: UITableViewCell {

    // IBOUTLET'S
    @IBOutlet weak var SettingOptionIcon: UIImageView!
    @IBOutlet weak var OptionTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension SettingsCell {
    
    func config(data: SettingModel) {
        self.SettingOptionIcon.image = UIImage(named: data.iconName)
        self.OptionTitle.text = data.optionTitle
    }
    
}
