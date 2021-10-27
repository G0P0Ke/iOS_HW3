//
//  CollectionViewController.swift
//  aaandreev_4PW3
//
//  Created by  Антон Андреев on 26.10.2021.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    private var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }

        
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
        
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "alarmId", for: indexPath) as! AlarmView
        
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true

        return cell
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColorFromHex(rgbValue: 0x000000)
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let layoutFlow = UICollectionViewFlowLayout()
        layoutFlow.sectionInset = UIEdgeInsets(
            top: 20,
            left: 10,
            bottom: 10,
            right: 10)
        layoutFlow.itemSize = CGSize(width: UIScreen.main.bounds.width * 0.8, height: 60)
        let rect = CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30)
                
        collectionView = UICollectionView(
            frame: rect,
            collectionViewLayout: layoutFlow
        )
        collectionView.register(AlarmView.self, forCellWithReuseIdentifier: "alarmId")
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.showsVerticalScrollIndicator = true
        collectionView.backgroundColor = UIColorFromHex(rgbValue: 0x000000)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.layer.cornerRadius = 35
        collectionView.layer.masksToBounds = true
        
        self.view.addSubview(collectionView)
    }
    
    func UIColorFromHex(rgbValue:UInt32,_ alpha:Double=1.0) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
}

