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
    @IBOutlet weak var rectangle: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redSlider.value=255
        greenSlider.value=0
        blueSlider.value=0
        sliderChanged()
        
        rectangle.layer.borderColor = UIColor.blackColor().CGColor
        rectangle.layer.borderWidth = 5
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
        //view.backgroundColor = UIColor(red: red, green: green,blue:blue,alpha:1)
        //view.backgroundColor=UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        rectangle.backgroundColor=UIColor(red: red, green: green, blue: blue, alpha: 1)
        let str = "\(red) \(green) \(blue)"
        print(str)
        //view.backgroundColor(UIColor(CGColor: <#T##CGColor#>)
    }
}

