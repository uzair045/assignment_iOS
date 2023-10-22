//
//  VehicleImageTableViewCell.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 18/10/2023.
//

import UIKit

final class VehicleImageTableViewCell: StandardCell {
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var availableColorsStackView: UIStackView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func configureCell() {
        if let model = cellModel as? VehicleImageTableViewCellModel {
            yearLabel.text = "Year - " + (model.year ?? "")
        }
    }
    
}

// MARK: - Cell Model
final class VehicleImageTableViewCellModel: StandardCellModel {
    
    let imagesArray: [String]
    let year: String?
    
    init(actions: StandardCellActions? = nil, imagesArray: [String], year: String?) {
        self.imagesArray = imagesArray
        self.year = year
        super.init(actions: actions)
    }
    
    override func reusableIdentifier() -> String {
        return VehicleImageTableViewCell.identifier()
    }
}
