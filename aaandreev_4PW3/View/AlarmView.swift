//
//  AlarmView.swift
//  aaandreev_4PW3
//
//  Created by  Антон Андреев on 27.10.2021.
//

import UIKit

class AlarmView: UICollectionViewCell {
    
    let timeToggle: UISwitch = {
        let toggle = UISwitch()
        toggle.clipsToBounds = false
        toggle.translatesAutoresizingMaskIntoConstraints = false
        toggle.layer.cornerRadius = 10
        return toggle
    }()
    
    let timeLabel: UILabel = {
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MMM-dd HH:mm:ss"
        let date = Date()
        let dateString = dateFormatter.string(from: date)
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .light)
        label.text = dateString
        label.textColor = UIColor.white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func addView() {
        backgroundColor = UIColorFromHex(rgbValue: 0xc06000)
        
        addSubview(timeLabel)
        addSubview(timeToggle)
        
        timeToggle.rightAnchor.constraint(equalTo: rightAnchor, constant: -25).isActive = true
        timeToggle.pinTop(to: topAnchor, 10)
        timeToggle.pinBottom(to: bottomAnchor, 10)
        timeToggle.setHeight(to: 50)
        timeToggle.setWidth(to: 50)

        timeLabel.pinTop(to: topAnchor, 5)
        timeLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        timeLabel.pinBottom(to: bottomAnchor, 5)
        
            
    }

    func UIColorFromHex(rgbValue:UInt32,_ alpha:Double=1.0) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0

        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }

}
