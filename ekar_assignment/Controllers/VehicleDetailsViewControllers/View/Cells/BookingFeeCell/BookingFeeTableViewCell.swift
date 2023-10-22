//
//  BookingFeeTableViewCell.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 18/10/2023.
//

import UIKit

class BookingFeeTableViewCell: StandardCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var howContractWorksView: UIView!
    @IBOutlet weak var feeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    
    override func configureCell() {
        if let model = cellModel as? BookingFeeTableViewCellModel {
            self.feeLabel.text = model.bookingFee
        }
    }
}

// MARK: - Class Methods
extension BookingFeeTableViewCell {
    private func setupUI() {
        howContractWorksView.layer.borderWidth = 1
        howContractWorksView.layer.borderColor = UIColor.systemBlue.cgColor //UIColor(red: 226/255, green: 246/255, blue: 255/255, alpha: 1).cgColor
        howContractWorksView.layer.cornerRadius = 4
    }
}

// MARK: - Actions
extension BookingFeeTableViewCell {
    @IBAction func howItWorksTapped(_ sender: UIButton) {
        if let model = cellModel as? BookingFeeTableViewCellModel {
            model.actions?.cellSelected(0, model)
        }
    }
}


// MARK: - Cell Model
final class BookingFeeTableViewCellModel: StandardCellModel {
    
    let bookingFee: String
    
    init(actions: StandardCellActions? = nil, bookingFee: String) {
        self.bookingFee = bookingFee
        super.init(actions: actions)
    }
    
    override func reusableIdentifier() -> String {
        return BookingFeeTableViewCell.identifier()
    }
}
