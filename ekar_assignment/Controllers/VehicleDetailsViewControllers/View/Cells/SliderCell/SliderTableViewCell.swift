//
//  SliderTableViewCell.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 18/10/2023.
//

import UIKit

final class SliderTableViewCell: StandardCell {
    
    // MARK: - IBoutlets
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var savingsView: UIView!
    
    // MARK: - Attributes
    var steps: Float = 3
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    
    override func configureCell() {
        if let model = cellModel as? SliderTableViewCellModel {
            self.slider.value = model.selectedTenure
        }
    }
}

// MARK: - Class Methods
extension SliderTableViewCell {
    
    private func setupUI() {
        savingsView.layer.cornerRadius = savingsView.frame.height/2
        savingsView.backgroundColor = .red
        
        setupSlider()
    }
    
    private func setupSlider() {
        slider.minimumValue = 1
        slider.maximumValue = 9
    }
}

// MARK: - Actions
extension SliderTableViewCell {
    @IBAction func sliderValueChanged(sender: UISlider) {
        var roundedValue = round(sender.value / steps) * steps
        roundedValue = roundedValue == 0 ? 1 : roundedValue
        sender.value = roundedValue
        
        if let model = cellModel as? SliderTableViewCellModel {
            model.selectedTenure = roundedValue
            model.actions?.cellSelected(0, model)
        }
    }
}


// MARK: - Cell Model
final class SliderTableViewCellModel: StandardCellModel {
    
    var selectedTenure: Float
    
    init(actions: StandardCellActions? = nil, selectedTenure: Float) {
        self.selectedTenure = selectedTenure
        super.init(actions: actions)
    }
    
    override func reusableIdentifier() -> String {
        return SliderTableViewCell.identifier()
    }
}
