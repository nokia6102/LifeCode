//
//  DatePickerViewController.swift
//  LifeCode
//
//  Created by 施馨檸 on 16/10/2017.
//  Copyright © 2017 施馨檸. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet weak var birthDatePicker: UIDatePicker!
    
    
    var lifeCode1 = 0
    var lifeCode2 = 0
    var lifeCode3 = 0
    
    @IBAction func datePicker(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let dateString = dateFormatter.string(from: birthDatePicker.date)
        
        var sum1 = 0
        var sum2 = 0
        var sum3 = 0
        
        // 第一層計算數字，不超過10
        for char in dateString {
            let number = Int(String(char))
            sum1 = sum1 + number!
        }
        
        if sum1 <= 9 {
            print("\(sum1)sum1")
            
        } else {
            // 第二層計算，總數相加為二位數
            let sum1String = String(Int(sum1))
            for char in sum1String {
                let number = Int(String(char))
                sum2 = sum2 + number!
                print("\(sum2)sum2")
                }
            // 第三層計算，相加為二位數之後再相加一次
            if sum2 > 9 {
                let sum2String = String(Int(sum2))
                for char in sum2String {
                    let number = Int(String(char))
                    sum3 = sum3 + number!
                }
                print("\(sum3)sum3")
            }
        }
        
        lifeCode1 = sum1
        lifeCode2 = sum2
        lifeCode3 = sum3
    }
    

    
    
    @IBAction func showDetailButton(_ sender: Any) {
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let controller = segue.destination as! NumerologyViewController
        controller.lifeCode1 = lifeCode1
        controller.lifeCode2 = lifeCode2
        controller.lifeCode3 = lifeCode3
        
        
    }
    

}
