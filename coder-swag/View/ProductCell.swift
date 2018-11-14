//
//  ProductCell.swift
//  coder-swag
//
//  Created by Vlado Velkovski on 11/14/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPriec: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
