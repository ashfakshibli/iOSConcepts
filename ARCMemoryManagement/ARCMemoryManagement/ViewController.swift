//
//  ViewController.swift
//  ARCMemoryManagement
//
//  Created by Ashfak Md Shibli on 5/7/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        print("\(self) allocated")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("\(self) deallocated")
    }

    @IBAction func startAmartDetection(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SmartDetectViewController") as? SmartDetectViewController else {return}
        present(vc, animated: true, completion: nil)
    }
    
}

