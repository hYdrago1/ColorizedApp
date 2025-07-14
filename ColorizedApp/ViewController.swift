//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Ivan Honcharov on 14.07.25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redIdentificator: UILabel!
    @IBOutlet var greenIdentificator: UILabel!
    @IBOutlet var blueIdentificator: UILabel!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        
    }
    
    
    @IBAction func getChangeRedSlider() {
        redIdentificator.text = String(format: "%.1f", redSlider.value)
        changeColor()
    }
    
    @IBAction func getChangeGreenSlider() {
        greenIdentificator.text = String(format: "%.1f", greenSlider.value)
        changeColor()
    }
    
    @IBAction func getChangeBlueSlider() {
        blueIdentificator.text = String(format: "%.1f", blueSlider.value)
        changeColor()
    }
    
    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    
}

