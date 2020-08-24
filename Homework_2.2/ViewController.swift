//
//  ViewController.swift
//  Homework_2.2
//
//  Created by Вадим Жданов on 23.08.2020.
//  Copyright © 2020 Вадим Жданов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    @IBOutlet weak var viewMain: UIView!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sliderRed.minimumTrackTintColor = .red
        sliderBlue.minimumTrackTintColor = .blue
        sliderGreen.minimumTrackTintColor = .green
        
        viewMain.layer.cornerRadius = 15
        viewMain.backgroundColor = .init(red: CGFloat(sliderRed.value),
                                         green: CGFloat(sliderGreen.value),
                                         blue: CGFloat(sliderBlue.value),
                                         alpha: 1)
    }
    
    override func viewWillLayoutSubviews() {
        print("SubViews has layouted")
    }
    
    @IBAction func sliderRedMove() {
        labelRed.text = String(format: "%.2f", sliderRed.value)
        viewMain.backgroundColor = .init(red: CGFloat(sliderRed.value),
                                         green: CGFloat(sliderGreen.value),
                                         blue: CGFloat(sliderBlue.value),
                                         alpha: 1)
    }
    
    @IBAction func sliderGreenMove() {
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        viewMain.backgroundColor = .init(red: CGFloat(sliderRed.value),
                                         green: CGFloat(sliderGreen.value),
                                         blue: CGFloat(sliderBlue.value),
                                         alpha: 1)
    }
    
    @IBAction func sliderBlueMove() {
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        viewMain.backgroundColor = .init(red: CGFloat(sliderRed.value),
                                         green: CGFloat(sliderGreen.value),
                                         blue: CGFloat(sliderBlue.value),
                                         alpha: 1)
    }
    
}

