//
//  OnboardViewController.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 22/10/2023.
//

import UIKit

final class OnboardViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var commentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

// MARK: - Class Methods
extension OnboardViewController {
    private func setupUI() {
        setupNavigation()
    }
    
    private func setupNavigation() {
        self.navigationItem.setTitleImage()
        
        let button = UIBarButtonItem(image: UIImage(named: "close"), style: .plain, target: self, action: #selector(dismissAction))
        button.tintColor = .black
        self.navigationItem.leftBarButtonItem = button
    }
}

// MARK: - Actions
extension OnboardViewController {
    @objc func dismissAction() {
        self.dismiss(animated: true)
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        let isTextFieldEmpty = commentTextField.text?.isEmpty ?? true
        if isTextFieldEmpty {
            Services.showErrorAlert(with: "Please enter your comments.")
            return
        }
        Services.showAlert(style: .alert, title: "Success", message: "Thank you for choosing ekar.")
    }
}
