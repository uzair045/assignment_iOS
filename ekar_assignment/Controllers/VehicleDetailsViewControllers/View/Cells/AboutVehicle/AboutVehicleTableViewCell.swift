//
//  AboutVehicleTableViewCell.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 22/10/2023.
//

import UIKit

final class AboutVehicleTableViewCell: StandardCell {

    // MARK: - Outlets
    @IBOutlet weak var engineCapacityLabel: UILabel!
    @IBOutlet weak var seatsLabel: UILabel!
    @IBOutlet weak var transmissionLabel: UILabel!
    @IBOutlet weak var fuelTypeLabel: UILabel!
    
    override func configureCell() {
        if let model = cellModel as? AboutVehicleTableViewCellModel {
            engineCapacityLabel.text = model.engineCapacity + " Engine"
            seatsLabel.text = model.seats + " Seats"
            transmissionLabel.text = model.transmission
            fuelTypeLabel.text = model.fuel
        }
    }
}

// MARK: - Cell Model
final class AboutVehicleTableViewCellModel: StandardCellModel {
    
    let engineCapacity: String
    let seats: String
    let transmission: String
    let fuel: String
    
    init(actions: StandardCellActions? = nil, engineCapacity: String, seats: String, transmission: String, fuel: String) {
        self.engineCapacity = engineCapacity
        self.seats = seats
        self.transmission = transmission
        self.fuel = fuel
        super.init(actions: actions)
    }
    
    override func reusableIdentifier() -> String {
        return AboutVehicleTableViewCell.identifier()
    }
}
