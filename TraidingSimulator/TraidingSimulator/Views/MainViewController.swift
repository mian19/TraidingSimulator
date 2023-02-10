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
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        setViews()
        
    }
    
    private func setViews() {
        view.backgroundColor = .green
        
    
    }
    
}
