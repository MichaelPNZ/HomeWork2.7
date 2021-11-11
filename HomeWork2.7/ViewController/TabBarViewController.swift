//
//  TabBarViewController.swift
//  HomeWork2.7
//
//  Created by Михаил Позялов on 12.11.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? TableViewController else { return }
        guard let selectionVC = viewControllers?.last as? SecondTableViewController else { return }
        
        let persons = Person.createPersons()
        contactListVC.persons = persons
        selectionVC.persons = persons
    }
    
}
