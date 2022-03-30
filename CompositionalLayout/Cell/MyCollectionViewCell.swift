//
//  MyCollectionViewCell.swift
//  CompositionalLayout
//
//  Created by Никита Коголенок on 30.03.22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Variable
    static let identifier = "MyCollectionViewCell"
    
    // MARK: - GUI Variable
    private let imageView: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        createImage()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Methods
    func createImage() {
        contentView.addSubview(imageView)
        
        let images: [UIImage] = [
        UIImage(named: "image_1"),
        UIImage(named: "image_2"),
        UIImage(named: "image_3"),
        UIImage(named: "image_4"),
        UIImage(named: "image_5"),
        UIImage(named: "image_6"),
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
    }
}
