//
//  Loader.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 22/10/2023.
//

import UIKit

class Loader: UIView {
    
    fileprivate static let _sharedManager = Loader()
    let loadingView: UIView = UIView()
    let actInd: UIActivityIndicatorView = UIActivityIndicatorView()
       
    class var shared : Loader {
        return _sharedManager
    }
    
    //MARK: - Enums
    enum Mode {
        case light
        case dark
        
        var indicatorColor: UIColor {
            switch self {
            case .dark:
                return UIColor.white
            default:
                return UIColor.black
            }
        }
        
        var loadingViewColor: UIColor {
            switch self {
            case .dark:
                return UIColor.black.withAlphaComponent(0.7)
            case .light:
                return UIColor.white.withAlphaComponent(0.7)
            }
        }
    }
    
    func show(on vc: UIViewController = Services.rootViewController ?? UIViewController(), mode: Mode? = .light) {
        
        if vc.contains(self) {
            return
        }
        
        self.frame = vc.view.frame
        self.center = vc.view.center
        self.backgroundColor = UIColor(white: 0, alpha: 0.3)
        
        loadingView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        loadingView.center = vc.view.center
        loadingView.backgroundColor = mode?.loadingViewColor //UIColor.black.withAlphaComponent(0.7)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        
        actInd.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        actInd.style = .large
        actInd.color = mode?.indicatorColor
        actInd.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2)
        loadingView.addSubview(actInd)
        self.addSubview(loadingView)
        self.isHidden = false
        
        if let navigation = vc.navigationController {
            navigation.view.addSubview(self)
            self.anchorToSuperview()
            actInd.startAnimating()
            return
        }
        
        vc.view.addSubview(self)
        vc.view.bringSubviewToFront(self)
        actInd.startAnimating()
        
        if let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
            window.isUserInteractionEnabled = false
        }
    }
    
    func hide() {
        
        if self.isHidden == false {
            self.isHidden = true
            
            self.actInd.removeFromSuperview()
            self.loadingView.removeFromSuperview()
            self.removeFromSuperview()
        }
        
        if let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) {
            window.isUserInteractionEnabled = true
        }
    }
}
