//
//  AViewController.swift
//  SegueTesting
//
//  Created by Usman Nazir on 09/07/2019.
//  Copyright © 2019 Usman Nazir. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func UnwindtoA(unwindSegue: UIStoryboardSegue)
    {
        print("Unwinded")
    }
    
    
    @IBAction func RedButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "toBlue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let svc = segue.destination as? BViewController
        {
            svc.s = "DATA FROM A"
        }
    }
}
