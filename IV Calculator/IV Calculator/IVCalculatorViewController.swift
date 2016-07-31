//
//  IVCalculatorViewController.swift
//  IV Calculator
//
//  Created by Juan M Penaranda on 7/31/16.
//  Copyright © 2016 Juan M Penaranda. All rights reserved.
//

import UIKit

class IVCalculatorViewController: UIViewController {
    
    @IBOutlet weak var pokemonNameTextField: UITextField!
    @IBOutlet weak var CPTextField: UITextField!
    @IBOutlet weak var HPTextField: UITextField!
    @IBOutlet weak var dustTextField: UITextField!
    @IBOutlet weak var poweredTextField: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
