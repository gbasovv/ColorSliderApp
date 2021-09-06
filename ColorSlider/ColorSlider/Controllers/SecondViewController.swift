//
//  SecondViewController.swift
//  ColorSlider
//
//  Created by Powroli on 7.07.21.
//

import UIKit

class SecondViewController: UIViewController {

    weak var delegate: FirstViewControllerDelegate?

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!

    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var opacityTF: UITextField!

    @IBOutlet weak var acceptBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    @IBAction func tapedAnywhere(_ sender: UITapGestureRecognizer) {
        redTF.resignFirstResponder()
        greenTF.resignFirstResponder()
        blueTF.resignFirstResponder()
        opacityTF.resignFirstResponder()
    }

    private func setUI() {
        acceptBtn.layer.cornerRadius = 15
    }

    @IBAction func sliderChanged() {
        redTF.text = String(Int(round(redSlider.value)))
        greenTF.text = String(Int(round(greenSlider.value)))
        blueTF.text = String(Int(round(blueSlider.value)))
        opacityTF.text = String(Int(round(opacitySlider.value)))
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(opacitySlider.value) / 100)
    }

    @IBAction func textFieldChanged(_ textField: UITextField) {
        guard let text = textField.text else { return }
        if let currentValue = Float(text) {
            switch textField.tag {
            case 0: redSlider.value = currentValue
            case 1: greenSlider.value = currentValue
            case 2: blueSlider.value = currentValue
            case 3: opacitySlider.value = currentValue
            default: break
            }
            self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(opacitySlider.value) / 100)
        }
    }

    @IBAction func firstRecomColor() {
        redSlider.value = 139
        greenSlider.value = 0
        blueSlider.value = 0
        opacitySlider.value = 100
        redTF.text = String(Int(round(redSlider.value)))
        greenTF.text = String(Int(round(greenSlider.value)))
        blueTF.text = String(Int(round(blueSlider.value)))
        opacityTF.text = String(Int(round(opacitySlider.value)))
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(opacitySlider.value) / 100)
    }

    @IBAction func secondRecomColor() {
        redSlider.value = 60
        greenSlider.value = 179
        blueSlider.value = 113
        opacitySlider.value = 100
        redTF.text = String(Int(round(redSlider.value)))
        greenTF.text = String(Int(round(greenSlider.value)))
        blueTF.text = String(Int(round(blueSlider.value)))
        opacityTF.text = String(Int(round(opacitySlider.value)))
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(opacitySlider.value) / 100)
    }

    @IBAction func thirdRecomColor() {
        redSlider.value = 199
        greenSlider.value = 21
        blueSlider.value = 133
        opacitySlider.value = 100
        redTF.text = String(Int(round(redSlider.value)))
        greenTF.text = String(Int(round(greenSlider.value)))
        blueTF.text = String(Int(round(blueSlider.value)))
        opacityTF.text = String(Int(round(opacitySlider.value)))
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(opacitySlider.value) / 100)
    }

    @IBAction func fourthRecomColor() {
        redSlider.value = 255
        greenSlider.value = 69
        blueSlider.value = 0
        opacitySlider.value = 100
        redTF.text = String(Int(round(redSlider.value)))
        greenTF.text = String(Int(round(greenSlider.value)))
        blueTF.text = String(Int(round(blueSlider.value)))
        opacityTF.text = String(Int(round(opacitySlider.value)))
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(opacitySlider.value) / 100)
    }

    @IBAction func acceptBtnTapped() {
        delegate?.update(background: UIColor(red: CGFloat(redSlider.value) / 255, green: CGFloat(greenSlider.value) / 255, blue: CGFloat(blueSlider.value) / 255, alpha: CGFloat(opacitySlider.value) / 100))
        navigationController?.popToRootViewController(animated: true)
    }

}
