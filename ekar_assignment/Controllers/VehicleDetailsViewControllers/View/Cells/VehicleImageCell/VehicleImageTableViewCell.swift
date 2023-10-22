//
//  VehicleImageTableViewCell.swift
//  ekar_assignment
//
//  Created by Uzair Mughal on 18/10/2023.
//

import UIKit

final class VehicleImageTableViewCell: StandardCell {
    
    // MARK: - Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var availableColorsStackView: UIStackView!
    
    // MARK: - Attributes
    var dataSource: [StandardCellModel] = []
    
    // MARK: - Flow layout
    var collectionFlowLayout: UICollectionViewFlowLayout {
        let _flowLayout = UICollectionViewFlowLayout()
        _flowLayout.itemSize = CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
        _flowLayout.scrollDirection = .horizontal
        _flowLayout.minimumLineSpacing = 0
        collectionView.isPagingEnabled = true
        return _flowLayout
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupCollectionView()
    }
    
    override func configureCell() {
        if let model = cellModel as? VehicleImageTableViewCellModel {
            yearLabel.text = "Year - " + (model.year ?? "")
            self.makeCollectionViewDataSource()
        }
    }
}

// MARK: - Class Methods
extension VehicleImageTableViewCell {
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.collectionViewLayout = collectionFlowLayout
    }
    
    private func makeCollectionViewDataSource() {
        self.dataSource.removeAll()
        if let model = cellModel as? VehicleImageTableViewCellModel {
            model.imagesArray.forEach { image in
                let model = ImageCollectionViewCellModel(image: image)
                self.dataSource.append(model)
            }
            dataSource.forEach({collectionView.register(UINib(nibName: $0.reusableIdentifier(), bundle: nil), forCellWithReuseIdentifier: $0.reusableIdentifier())})
            self.collectionView.reloadData()
        }
    }
}

// MARK: -
extension VehicleImageTableViewCell: UIScrollViewDelegate {
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var visibleRect = CGRect()
        
        visibleRect.origin = collectionView.contentOffset
        visibleRect.size = collectionView.bounds.size
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        guard let indexPath = collectionView.indexPathForItem(at: visiblePoint) else { return }
        self.pageControl.currentPage = indexPath.row
    }
}

// MARK: - Cell Model
final class VehicleImageTableViewCellModel: StandardCellModel {
    
    let imagesArray: [String]
    let year: String?
    
    init(actions: StandardCellActions? = nil, imagesArray: [String], year: String?) {
        self.imagesArray = imagesArray
        self.year = year
        super.init(actions: actions)
    }
    
    override func reusableIdentifier() -> String {
        return VehicleImageTableViewCell.identifier()
    }
}

// MARK: - Collection View Data source
extension VehicleImageTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_: UICollectionView, numberOfItemsInSection _: Int) -> Int {
        return dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = dataSource[indexPath.row]
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: model.reusableIdentifier(), for: indexPath) as? StandardCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.cellModel = model
        return cell
    }
    
    func collectionView(_: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //        cellModel?.actions?.cellSelected(indexPath.item, dataSource[indexPath.item])
    }
}
