//
//  EyeCell.swift
//  aaandreev_4PW3
//
//  Created by  Антон Андреев on 27.10.2021.
//

import UIKit

final class EyeCell: UITableViewCell {
     func setupEye() {
        setHeight(to: 50)
        let image = UIImageView()
        addSubview(image)
        image.pinLeft(
           to: self,
           Double.random(in: 0...400)
        )
        image.pinTop(
           to: self,
           Double.random(in: -20...40)
        )
        image.image = UIImage(named: "eye")
        image.setHeight(to: 20)
        image.setWidth(to: 30)
    }
    
    override func prepareForReuse() {
        for subview in subviews {
            if subview is UIImageView {
                subview.removeFromSuperview()
            }
        }
    }
}
