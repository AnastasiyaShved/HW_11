//
//  ViewController.swift
//  HW_11
//
//  Created by Apple on 10.08.23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var progressView: UIProgressView!
    @IBOutlet private weak var slider: UISlider!
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var buttonSetTime: UIButton!
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var `switch`: UISwitch!
    @IBOutlet private weak var buttonClear: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func slider(_ sender: UISlider) {
        textField.text = String(round(sender.value*100)/100)
        progressView.progress = sender.value
    }
    
    @IBAction private func changeTextV(_ sender: UITextField) {
        slider.setValue(Float(String(sender.text ?? "")) ?? 0, animated: true)
        progressView.progress = Float(String(sender.text ?? "")) ?? 0
    }
    
    @IBAction private func buttonSetTime(_ sender: UIButton) {
        let  timeFormater = DateFormatter()
        timeFormater.dateFormat = "HH:mm"
        
        let time = timeFormater.string(from: datePicker.date)
        label.text = time
    }
    
    @IBAction private func `switch`(_ sender: UISwitch) {
        label.backgroundColor = sender.isOn ? .blue : .gray
    }
    
    @IBAction private func buttonClear(_ sender: UIButton) {
        label.text = ""
        `switch`.setOn(false, animated: true)
        label.backgroundColor = .gray
    }
    
    
}

