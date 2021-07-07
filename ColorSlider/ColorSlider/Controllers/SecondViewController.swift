//
//  SecondViewController.swift
//  ColorSlider
//
//  Created by Powroli on 7.07.21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var opacityTF: UITextField!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var acceptBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func redSlider(_ sender: UISlider) {
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
    }
    
    @IBAction func opacitySlider(_ sender: UISlider) {
    }
    
    @IBAction func acceptBtnTapped() {
    }
    
}
