//
//  BViewController.swift
//  SegueTesting
//
//  Created by Usman Nazir on 09/07/2019.
//  Copyright © 2019 Usman Nazir. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!
    
    var s:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Button.setTitle(s, for: .normal)
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
