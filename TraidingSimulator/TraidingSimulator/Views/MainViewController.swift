//
//  MainViewController.swift
//  52Weeks
//
//  Created by Kyzu on 14.01.23.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: MainViewModel!
    weak var coordinator: AppCoordinator?
    var firstView: FirstEntranceView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        
    }
    
    private func setViews() {
        
    showFirstView()
    }
    
    private func showFirstView() {
        if !UserDefaultsManager.shared.checkResult(.firstEntrance) {
            firstView = FirstEntranceView()
            view.addSubview(firstView)
            firstView.widthAnchor.constraint(equalToConstant: 360.adjW()).isActive = true
            firstView.heightAnchor.constraint(equalToConstant: 400).isActive = true
            firstView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            firstView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            UserDefaultsManager.shared.saveCheck(.firstEntrance)
            firstView.tradeButton.addTarget(self, action: #selector(removeFromMain), for: .touchUpInside)
            firstView.crossButton.addTarget(self, action: #selector(removeFromMain), for: .touchUpInside)
        }
    }
    
    //MARK: - Actions
    
    @objc func removeFromMain() {
        firstView.removeFromSuperview()
    }
    
    
}
