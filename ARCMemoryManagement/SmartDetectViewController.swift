//
//  SmartDetectViewController.swift
//  ARCMemoryManagement
//
//  Created by Ashfak Md Shibli on 5/7/23.
//

import UIKit


class SmartDetectViewController: UIViewController {
    override func viewDidLoad() {
        print("\(self) allocated")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addTimer()
        
        
    }
    
    deinit {
        print("\(self) deallocated")
    }
    
    @IBAction func goBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setObserver() {
        
    }
    
    func printHello() {
        print("Hello")
    }
    
    func addTimer() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {[weak self] in
            self?.printHello()
        }
    }
    
    
}
