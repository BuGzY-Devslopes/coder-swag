//
//  ViewController.swift
//  coder-swag
//
//  Created by Vlado Velkovski on 11/14/18.
//  Copyright © 2018 Vlado Velkovski. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let categoryCellIdentifier = "categoryCell"
    
//    let categories = DataService.instance.getCategories()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource  = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: categoryCellIdentifier, for: indexPath) as! CategoryCell
        let category = DataService.instance.getCategories()[indexPath.row]
        cell.category = category
        return cell
        
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 150
//    }

}

