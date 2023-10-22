//
//  VehicleDetailsViewController.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 16/10/2023.
//

import UIKit
import Combine

final class VehicleDetailsViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomContainerView: UIView!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var carTypeLabel: UILabel!
    
    @IBOutlet weak var proceedButton: UIButton!
    
    // MARK: - Attributes
    let viewModel = VehicleDetailsViewModel()
    private var cancellables = Set<AnyCancellable>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setup()
        self.bindViewModelToView()
    }
}

// MARK: - Class Methods
extension VehicleDetailsViewController {
    private func setup() {
        tableView.delegate = self
        tableView.dataSource = self
        
        setupShadow()
        
        self.navigationItem.setBackButton()
        self.navigationItem.setTitleImage()
        
        viewModel.configure()
        
        self.proceedButton.layer.cornerRadius = 5
    }
    
    fileprivate func bindViewModelToView() {
        self.viewModel.carDetailsFetched.sink { [unowned self] (status) in
            self.setCarDetails()
        }.store(in: &cancellables)
        
        self.viewModel.dataSourceCreated.sink { [unowned self] (status) in
                self.reloadData()
            }.store(in: &cancellables)
        
        self.viewModel.reloadIndexPath.sink { [weak self] (indexPath) in
            self?.tableView.reloadRows(at: [indexPath], with: .none)
        }.store(in: &cancellables)
    }
    
    private func reloadData() {
        let identifiers = viewModel.dataSource.map { $0.reusableIdentifier() }
        identifiers.forEach({tableView.register(UINib(nibName: $0, bundle: nil), forCellReuseIdentifier: $0)})
        tableView.reloadData()
    }
    
    private func setCarDetails() {
        if let carDetails = viewModel.carDetails {
            self.carNameLabel.text = carDetails.attributes?.model
            self.carTypeLabel.text = carDetails.attributes?.style
        }
    }
    
    private func setupShadow() {
        
        // Set shadow properties
        bottomContainerView.layer.shadowColor = UIColor.black.cgColor
        bottomContainerView.layer.shadowOpacity = 0.5
        bottomContainerView.layer.shadowOffset = CGSize(width: 0, height: 2)
        bottomContainerView.layer.shadowRadius = 4
    }
}

// MARK: - IBActions
extension VehicleDetailsViewController {
    @IBAction func proceedButtonTapped(_ sender: UIButton) {
        let vc = OnboardViewController.instantiate(fromAppStoryboard: .main)
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .overFullScreen
        self.present(nav, animated: true)
    }
}


// MARK: - Table view datasource
extension VehicleDetailsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = viewModel.dataSource[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: model.reusableIdentifier()) as? StandardCell else {
            return UITableViewCell()
        }
        cell.cellModel = model
        return cell
    }
}

// MARK: - Table view datasource
extension VehicleDetailsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
