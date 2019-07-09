//
//  CollectionViewCell.swift
//  MyCollectionViewApp
//
//  Created by Usman Nazir on 05/07/2019.
//  Copyright © 2019 Usman Nazir. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var BLA: UIImageView!
    var item:Item?
    {
        didSet
        {
            BLA.image = UIImage(named: item?.nameid ?? "nil")
        }
    }
}
