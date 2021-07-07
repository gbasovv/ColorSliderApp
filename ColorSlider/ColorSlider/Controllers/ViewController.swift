//
//  ViewController.swift
//  ColorSlider
//
//  Created by Powroli on 7.07.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        changeBtn.layer.cornerRadius = 15
    }

    @IBAction func changeBtnTapped() {
    }
    
}

