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
    @IBOutlet weak var carNameLabel: UILabel!
    
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
        
        self.navigationItem.setBackButton()
        self.navigationItem.setTitleImage()
        
        viewModel.configure()
    }
    
    fileprivate func bindViewModelToView() {
        self.viewModel.carDetailsFetched.sink { [unowned self] (status) in
            self.reloadData()
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
}

// MARK: - IBActions
extension VehicleDetailsViewController {
    @IBAction func proceedButtonTapped(_ sender: UIButton) {
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
