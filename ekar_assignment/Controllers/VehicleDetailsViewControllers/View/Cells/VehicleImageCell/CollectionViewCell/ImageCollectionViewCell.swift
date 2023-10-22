//
//  ImageCollectionViewCell.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 18/10/2023.
//

import UIKit

class ImageCollectionViewCell: StandardCollectionViewCell {

    // MARK: - Outlets
    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func configureCell() {
        if let model = cellModel as? ImageCollectionViewCellModel {
            self.image.image = UIImage(named: model.image)
        }
    }
}

final class ImageCollectionViewCellModel: StandardCellModel {
    
    let image: String

    init(actions: StandardCellActions? = nil, image: String) {
        self.image = image
        super.init(actions: actions)
    }
    
    override func reusableIdentifier() -> String {
        return ImageCollectionViewCell.identifier()
    }
}
