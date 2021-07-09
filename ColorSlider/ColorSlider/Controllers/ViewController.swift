//
//  ViewController.swift
//  ColorSlider
//
//  Created by Powroli on 7.07.21.
//

import UIKit

protocol FirstViewControllerDelegate: AnyObject {
    func update(background: UIColor)
}

class ViewController: UIViewController {

    @IBOutlet weak var changeBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    private func setUI() {
        changeBtn.layer.cornerRadius = 15
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? SecondViewController else { return }
        destination.delegate = self
    }

}

extension ViewController: FirstViewControllerDelegate {
    func update(background: UIColor) {
        self.view.backgroundColor = background
    }
}

