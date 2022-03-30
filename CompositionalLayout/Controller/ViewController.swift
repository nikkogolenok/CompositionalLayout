//
//  ViewController.swift
//  CompositionalLayout
//
//  Created by Никита Коголенок on 30.03.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - GUI Variable
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: ViewController.creatLayout())
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDelegate()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        createFrame()
    }
    
    // MARK: - Methods
    func createDelegate() {
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
    }
    
    func createFrame() {
        collectionView.frame = view.bounds
    }
    
    static func creatLayout() -> UICollectionViewCompositionalLayout {
        
    }
}

