//
//  FirstEntranceView.swift
//  TraidingSimulator
//
//  Created by Kyzu on 11.02.23.
//

import UIKit

class FirstEntranceView: UIView {

    var crossButton: UIButton!
    var tradeButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.init(rgb: 0x1C1F2D)
        layer.cornerRadius = 12
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
        setViews()

    }
    
    private func setViews() {
        layer.contents = UIImage(named: "firstView")!.cgImage
        setCrossButton()
        setTradeButton()
    }
    
    private func setCrossButton() {
        crossButton = UIButton.roundedButton(imageName: "crossButton", side: 24)
        addSubview(crossButton)
        
        crossButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        crossButton.heightAnchor.constraint(equalTo: crossButton.widthAnchor).isActive = true
        crossButton.topAnchor.constraint(equalTo: topAnchor, constant: 16.adjW()).isActive = true
        crossButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.adjW()).isActive = true
        
    }
    
    private func setTradeButton() {
        tradeButton = UIButton()
        tradeButton.translatesAutoresizingMaskIntoConstraints = false
        tradeButton.backgroundColor = .init(rgb: 0x49E8A5)
        tradeButton.layer.cornerRadius = 6
        tradeButton.setTitle("Trade", for: .normal)
        tradeButton.setTitleColor(.black, for: .normal)
        tradeButton.titleLabel?.font =  UIFont(name: "Inter-Bold", size: 18.adjW())
        addSubview(tradeButton)
        
        tradeButton.heightAnchor.constraint(equalToConstant: 43.adjW() ).isActive = true
        tradeButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16.adjW()).isActive = true
        tradeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.adjW()).isActive = true
        tradeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.adjW()).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
