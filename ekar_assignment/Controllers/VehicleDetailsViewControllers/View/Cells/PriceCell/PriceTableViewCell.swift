//
//  PriceTableViewCell.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 18/10/2023.
//

import UIKit

class PriceTableViewCell: StandardCell {

    // MARK: - Outlets
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var contractLengthLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func configureCell() {
        if let model = cellModel as? PriceTableViewCellModel {
            priceLabel.text = model.price
            contractLengthLabel.text = model.months
        }
    }
}

// MARK: - Cell model
final class PriceTableViewCellModel: StandardCellModel {
    
    var price: String
    var months: String
    
    init(actions: StandardCellActions? = nil, price: String, months: String) {
        self.price = price
        self.months = months
        super.init(actions: actions)
    }
    
    override func reusableIdentifier() -> String {
        return PriceTableViewCell.identifier()
    }
}
