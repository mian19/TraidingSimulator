//
//  MenuViewController.swift
//  TraidingSimulator
//
//  Created by Kyzu on 12.02.23.
//

import UIKit

class MenuViewController: UIViewController {

    var tableView: UITableView!
    var names = ["Trading", "Trading strategies", "News", "Signals", "Training", "Rate our app", "Share our app", "Usage Policy"]
    var  menuButton = UIButton()
    var actions: [(() -> ())] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(rgb: 0x1C1F2D)
        actions.append(showRateView)
    confTableView()
    }
    
    func confTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuCell.self, forCellReuseIdentifier: MenuCell.reuseId)
        tableView.frame = CGRect(x: 0, y: 30, width: 0.77 * UIScreen.main.bounds.width, height: view.bounds.height - 60)
        tableView.backgroundColor = .clear
        tableView.isScrollEnabled = false
        tableView.separatorColor = .init(rgb: 0xCAD2EC)
        tableView.rowHeight = 56
        view.addSubview(tableView)
    }
    
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let myLabel = UILabel()
            myLabel.frame = CGRect(x: 60, y: 0, width: 200, height: 20)
        myLabel.font = UIFont(name: "Inter-SemiBold", size: 18)
            myLabel.text = "Menu"
        myLabel.textColor = .init(rgb: 0xffffff)
        menuButton.frame = CGRect(x: 20, y: 0, width: 20, height: 20)
        menuButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        menuButton.tintColor = .init(rgb: 0xffffff)
        menuButton.contentVerticalAlignment = .fill
        menuButton.contentHorizontalAlignment = .fill
        menuButton.imageView?.scalesLargeContentImage = true
        
            let headerView = UIView()
        headerView.addSubview(menuButton)
            headerView.addSubview(myLabel)

            return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuCell.reuseId) as! MenuCell
        cell.iconImageView.image = UIImage(named: "menu\(indexPath.row + 1)")!
        cell.myLabel.text = names[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 5:
            showRateView()
        case 6:
            shareApp()
        default:
            return
        }
    }
    
    
}
