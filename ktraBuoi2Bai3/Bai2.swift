//
//  Bai2.swift
//  ktraBuoi2Bai3
//
//  Created by MacOne-YJ4KBJ on 4/20/22.
//

import UIKit

class Bai2: UIViewController {
    @IBOutlet weak var lblKQ: UILabel!
    var kq : Double = 1
    @IBOutlet weak var btMain: UIButton!
    @IBOutlet weak var txtFMain: UITextField!
    @IBOutlet weak var lblTop: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTop.center.x = view.center.x
        txtFMain.center.x = view.center.x
        btMain.center.x = view.center.x
        // Do any additional setup after loading the view.
    }

    func giaithua(n : Double) -> Double{
        if n>1{
            return n * giaithua(n: n-1)
        }
        return 1
    }
    
    func aleartshow(){
        txtFMain.text = ""
        lblKQ.text = ""
        var alertAa = UIAlertController(title: "Bạn đã nhập sai n", message: "Nhập lại số nguyên dương", preferredStyle: .alert)
        var alertA = UIAlertAction(title: "Ok", style: .default)
        alertAa.addAction(alertA)
        present(alertAa, animated: true) {
        }
    }
    
    @IBAction func giaithua(_ sender: Any) {
        if let n = Int(txtFMain.text!){
            if n >= 0{
                kq = giaithua(n: Double(txtFMain.text!)!)
                lblKQ.text = "Kết quả là: \(kq)"
            }
            else{
                aleartshow()
            }
        }
        else{
            aleartshow()
        }
    }
}
