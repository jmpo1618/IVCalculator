//
//  IVResultsViewController.swift
//  IV Calculator
//
//  Created by Juan M Penaranda on 8/12/16.
//  Copyright © 2016 Juan M Penaranda. All rights reserved.
//

import UIKit

class IVResultsViewController: UIViewController {
    
    var stats: PokemonStats?

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var CPLabel: UILabel!
    @IBOutlet weak var HPLabel: UILabel!
    @IBOutlet weak var dustLabel: UILabel!
    @IBOutlet weak var poweredLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let stats = stats {
            pokemonNameLabel.text = stats.name
            CPLabel.text = String(stats.CP)
            HPLabel.text = String(stats.HP)
            dustLabel.text = String(stats.dust)
            poweredLabel.text = String(stats.powered)
            pokemonImage.image = UIImage(named: stats.name.lowercaseString)
        }

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
