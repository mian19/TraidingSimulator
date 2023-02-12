//
//  MenuCell.swift
//  TraidingSimulator
//
//  Created by Kyzu on 12.02.23.
//

import UIKit

class MenuCell: UITableViewCell {

    static let reuseId = "MenuCell"
    
    var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    var arrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "menuArrow")
        return imageView
    }()
    
    var myLabel: UILabel  = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.font = UIFont(name: "Inter-Medium", size: 15)
        label.textColor = .init(rgb: 0xffffff)
        return label
        
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        selectionStyle = .none
        addSubview(iconImageView)
        addSubview(myLabel)
        addSubview(arrowImageView)
        
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        arrowImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        arrowImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        arrowImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        arrowImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        myLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 16).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: arrowImageView.leadingAnchor, constant: -20).isActive = true
 
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
