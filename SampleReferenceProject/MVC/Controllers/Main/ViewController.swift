//
//  ViewController.swift
//  SampleReferenceProject
//
//  Created by Sierra 4 on 22/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerViewMain: UIView!
    @IBOutlet weak var btnCloseTable: UIButton!
   
    @IBOutlet weak var btnShowLowerTable: UIButton!
    @IBOutlet weak var btnShowUpperTable: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnShowLowerTableView(_ sender: Any) {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        let viewController = storyboard.instantiateViewController(withIdentifier: "tableViewController") as! MainTableViewController
        //viewController.selectedTable = "Lower table"
        viewController.view.frame = containerViewMain.bounds
        containerViewMain.addSubview(viewController.view)
        addChildViewController(viewController)
        // Configure Child View
        
        //viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    @IBAction func btnCloseClick(_ sender: Any) {
        let viewController = storyboard.instantiateViewController(withIdentifier: "tableViewController") as! MainTableViewController
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParentViewController()
    }
    
    
    


}

