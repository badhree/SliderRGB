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
        
        let defaults = NSUserDefaults.standardUserDefaults()
        redSlider.value = defaults.floatForKey("red")
        greenSlider.value = defaults.floatForKey("green")
        blueSlider.value = defaults.floatForKey("blue")
        
        
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
        /*let red = CGFloat(redSlider.value)
        let blue = CGFloat(blueSlider.value)
        let green = CGFloat(greenSlider.value)
        //view.backgroundColor = UIColor(red: red, green: green,blue:blue,alpha:1)
        //view.backgroundColor=UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        rectangle.backgroundColor=UIColor(red: red, green: green, blue: blue, alpha: 1)
        let str = "\(red) \(green) \(blue)"
        print(str)
        //view.backgroundColor(UIColor(CGColor: <#T##CGColor#>)*/
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setFloat(redSlider.value, forKey: "red")
        defaults.setFloat(blueSlider.value, forKey: "blue")
        defaults.setFloat(greenSlider.value, forKey: "green")
        defaults.synchronize()
        
        let red = defaults.floatForKey("red")
        let green = defaults.floatForKey("green")
        let blue = defaults.floatForKey("blue")
        rectangle.backgroundColor=UIColor(red: CGFloat(red), green: CGFloat(green)
            , blue: CGFloat(blue), alpha: 1.0)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if(segue.identifier=="openColor"){
            let newView = segue.destinationViewController
            newView.view.backgroundColor=rectangle.backgroundColor
        }
    }
}

