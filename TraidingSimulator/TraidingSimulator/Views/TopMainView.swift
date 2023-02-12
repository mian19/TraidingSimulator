//
//  TopMainView.swift
//  TraidingSimulator
//
//  Created by Kyzu on 12.02.23.
//

import UIKit

class TopMainView: UIView {

    var menuButton: UIButton!
    var historyButton: UIButton!
    var walletLabel: UILabel!
    var balanceLabel: UILabel!
    var walletButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.init(rgb: 0x1C1F2D)
 
        translatesAutoresizingMaskIntoConstraints = false
        setViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setViews() {
        menuButton = UIButton.roundedButton(imageName: "menu", side: 0)
        addSubview(menuButton)
        
        menuButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        menuButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        menuButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18.adjW()).isActive = true
    }
    
}
