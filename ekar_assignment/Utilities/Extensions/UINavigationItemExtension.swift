//
//  UINavigationItemExtension.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 22/10/2023.
//

import Foundation
import UIKit

extension UINavigationItem {
    func setBackButton(color: UIColor = .black) {
        let backButton = UIBarButtonItem()
        backButton.title = ""
        self.backBarButtonItem = backButton
        self.backBarButtonItem?.tintColor = color
    }
    
    func setTitleImage(with name: String = "logo") {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 25))
        imageView.image = UIImage(named: name)

        //stackView.frame = CGRectMake(0, 6, 200, 35)
        let titleView = UIView(frame: CGRectMake(0, 0, 50, 25))
        titleView.addSubview(imageView)
        self.titleView = titleView
    }
}
