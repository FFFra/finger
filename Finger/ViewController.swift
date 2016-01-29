//
//  ViewController.swift
//  Finger
//
//  Created by Fraschetti on 1/29/16.
//  Copyright © 2016 Fraschetti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var robotLabel: UILabel!
    @IBOutlet weak var numberField: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func playButton(sender: AnyObject) {
        let randomNumber = String(arc4random_uniform(6))
        
        
        if randomNumber == numberField.text{
            result.text = "Você está certo!"
            
        }else{
            result.text = "Errado! Eu tenho " + randomNumber + " dedos"
        }
        
        
        if Int(numberField.text!) > 5 || Int(numberField.text!) == nil{
            
            let alert = UIAlertController(title: "MANO!", message: "Digita um número entre 0 e 5!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
            result.text = "Tente novamente"
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
}

