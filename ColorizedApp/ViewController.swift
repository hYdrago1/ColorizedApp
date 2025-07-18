//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Ivan Honcharov on 14.07.25.
//

import UIKit

final class ViewController: UIViewController {
    
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
        
        setColor()
        
        redIdentificator.text = string(from: redSlider)
        greenIdentificator.text = string(from: greenSlider)
        blueIdentificator.text = string(from: blueSlider)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redIdentificator.text = string(from: redSlider)
        case greenSlider:
            greenIdentificator.text = string(from: greenSlider)
        default:
            blueIdentificator.text = string(from: blueSlider)
        }
    }
     
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: redSlider.value.cgFloat(),
            green: greenSlider.value.cgFloat(),
            blue: blueSlider.value.cgFloat(),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
extension Float {
    func cgFloat() -> CGFloat {
        CGFloat(self)
    }
}
