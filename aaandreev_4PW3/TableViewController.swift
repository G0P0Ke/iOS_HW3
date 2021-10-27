//
//  TableViewController.swift
//  aaandreev_4PW3
//
//  Created by  Антон Андреев on 26.10.2021.
//

import UIKit

class TableViewController: UIViewController {
    var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupTableView()
    }
    
    
    private func setupTableView() {
        let rect = CGRect(x: 15, y: 15, width: view.frame.width - 30, height: view.frame.height - 30)
                
        tableView = UITableView(frame: rect)
        tableView.register(EyeCell.self, forCellReuseIdentifier: "eyeCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = 80
        tableView.showsVerticalScrollIndicator = true
        tableView.backgroundColor = UIColor.green
        tableView.translatesAutoresizingMaskIntoConstraints = false 
        tableView.layer.cornerRadius = 35
        tableView.layer.masksToBounds = true
        
        self.view.addSubview(tableView)
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        300
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
   IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "eyeCell",
            for: indexPath
        ) as? EyeCell
        
        cell?.setupEye()
        return cell ?? UITableViewCell()
    }
}
