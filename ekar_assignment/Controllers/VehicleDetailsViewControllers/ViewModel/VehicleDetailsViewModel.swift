//
//  VehicleDetailsViewModel.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 17/10/2023.
//

import Foundation
import Combine

final class VehicleDetailsViewModel: ObservableObject {
    
    var dataSource: [StandardCellModel] = []
    var cellActions: StandardCellActions?
    var carDetails: CarDetailsBaseModel?
    
    var carDetailsFetched = PassthroughSubject<Bool, Never>()
    var dataSourceCreated = PassthroughSubject<Bool, Never>()
    var reloadIndexPath = PassthroughSubject<IndexPath, Never>()
    var cancellables = Set<AnyCancellable>()
    
    func configure() {
        self.setupCellActions()
        self.getCarDetails()
    }
}

// MARK: - Prepare data source
extension VehicleDetailsViewModel {
    private func makeDataSource() {
        self.dataSource.removeAll()
        
        let imagesCellModel = VehicleImageTableViewCellModel(imagesArray: ["",""], year: self.carDetails?.attributes?.year)
        dataSource.append(imagesCellModel)
        
        let priceCellModel = PriceTableViewCellModel(price: "1,500", months: "3")
        dataSource.append(priceCellModel)
        
        let sliderCellModel = SliderTableViewCellModel(actions: cellActions, selectedTenure: 3)
        dataSource.append(sliderCellModel)
        
        let feeCellModel = BookingFeeTableViewCellModel(bookingFee: "150")
        dataSource.append(feeCellModel)
        
        self.dataSourceCreated.send(true)
    }
}

// MARK: - Cell Actions
extension VehicleDetailsViewModel {
    private func setupCellActions() {
        self.cellActions = StandardCellActions(cellSelected: { [weak self] (index, model) in
            guard let `self` = self else { return }
            
            if let model = model as? SliderTableViewCellModel {
                self.updateTenure(value: model.selectedTenure)
            }
        })
    }
}

// MARK: - Update Cells
extension VehicleDetailsViewModel {
    private func updateTenure(value: Float) {
        if let index = dataSource.firstIndex(where: {$0 is PriceTableViewCellModel}) {
            (dataSource[index] as? PriceTableViewCellModel)?.months = "\(Int(value))"
            
            let indexPath = IndexPath(row: index, section: 0)
            reloadIndexPath.send(indexPath)
        }
    }
}

// MARK: - Make API call
extension VehicleDetailsViewModel {
    
    private func getCarDetails() {
        
        guard let url = URL(string: "https://api.carsxe.com/specs?key=tha91z6lv_j8u1nv4xs_ilfswb1e3&vin=JTDZN3EU0E3298500") else { return }
        NetworkManager.shared.makeCall(url: url)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    print("Finished")
                case let .failure(error):
                    print(error)
                }
            } receiveValue: { [unowned self] (data: CarDetailsBaseModel) in
                self.carDetails = data
                self.makeDataSource()
            }
            .store(in: &cancellables)
    }
}
