//
//  ViewController.swift
//  HW_11
//
//  Created by Apple on 10.08.23.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var buttonSetTime: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var buttonClear: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    @IBAction func slider(_ sender: UISlider) {
        textField.text = String(round(sender.value*100)/100)
        progressView.progress = sender.value
    }
    
    @IBAction func changeTextV(_ sender: UITextField) {
        slider.setValue(Float(String(sender.text ?? "")) ?? 0, animated: true)
        progressView.progress = Float(String(sender.text ?? "")) ?? 0
    }
    
    @IBAction func buttonSetTime(_ sender: UIButton) {
        let  timeFormater = DateFormatter()
        timeFormater.dateFormat = "HH:mm"
        
        let time = timeFormater.string(from: datePicker.date)
        label.text = time
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        label.backgroundColor = sender.isOn ? .blue : .gray
    }
    
    @IBAction func buttonClear(_ sender: UIButton) {
        label.text = ""
        `switch`.setOn(false, animated: true)
        label.backgroundColor = .gray
    }
    
    
}

