//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Kevin Sauves on 2018-03-04.
//  Copyright © 2018 Kevin Sauves. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
   
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        toDo.name = titleTextField.text!
        toDo.important = importantSwitch.isOn
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        //goes back to the main controller after clicking on add.
        navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



}
