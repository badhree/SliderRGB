//
//  ViewController.swift
//  RGBSliders
//
//  Created by BADHRI SADAGOPAN on 7/31/16.
//  Copyright © 2016 ManageMyTasks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliderChanged()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//Testing Source Control

    @IBAction func sliderChanged() {
        let red = CGFloat(redSlider.value)
        let blue = CGFloat(blueSlider.value)
        let green = CGFloat(greenSlider.value)
        view.backgroundColor = UIColor(red: red, green: green,blue:blue,alpha:1)
        //view.backgroundColor(UIColor(CGColor: <#T##CGColor#>)
    }
}

