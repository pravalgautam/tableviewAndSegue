//
//  pd.swift
//  tableviewswify
//
//  Created by Praval Gautam on 18/03/23.
//


import UIKit

class PdViewController: UIViewController{
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    var student: students!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        nameLabel.text =  student.name
        ageLabel.text = String(student.age)
        
        
        
    }
    
}
