//
//  EmptyViewController.swift
//  TableViewCell
//
//  Created by Samuel Kodytek on 04/11/2019.
//  Copyright © 2019 Samuel Kodytek. All rights reserved.
//

import UIKit

class EmptyViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    @IBAction func additem(_ sender: Any) {
        
        if (input.text != ""){
            list.append(input.text!)
            input.text = ""


        }

        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
