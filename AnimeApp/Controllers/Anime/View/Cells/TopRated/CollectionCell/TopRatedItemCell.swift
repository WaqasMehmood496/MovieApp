//
//  TopRatedItemCell.swift
//  AnimeApp
//
//  Created by Mapple.pk on 09/01/2023.
//

import UIKit
import Cosmos

class TopRatedItemCell: UICollectionViewCell {

    //IBOUTLET'S
    @IBOutlet weak var GameTitle: UILabel!
    @IBOutlet weak var GameTheme: UIImageView!
    @IBOutlet weak var GameRate: CosmosView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        GameRate.didTouchCosmos = { rating in
            print(rating)
        }
        
        GameRate.didFinishTouchingCosmos = { rating in
            print("Did Finish Call \(rating)")
        }
        
    }

}
