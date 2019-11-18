//
//  ViewController.swift
//  TableViewCell
//
//  Created by Samuel Kodytek on 04/11/2019.
//  Copyright © 2019 Samuel Kodytek. All rights reserved.
//

import UIKit

var list = ["Buy milk", "Do some ", "Buy bread" , "Go outside"]


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tvEmojies: UITableView!
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            list.remove(at: indexPath.row)
            tvEmojies.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool){
        
        tvEmojies.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvEmojies.delegate = self
        tvEmojies.dataSource = self
    }
    

    @IBAction func bClickMeClicked(_ sender: Any) {
        performSegue(withIdentifier: "ssEmptyView", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell()

        cell.textLabel?.text = list[indexPath.row]

        return cell
    }
    
}

