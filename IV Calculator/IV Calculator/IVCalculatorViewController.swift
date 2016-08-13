//
//  IVCalculatorViewController.swift
//  IV Calculator
//
//  Created by Juan M Penaranda on 7/31/16.
//  Copyright © 2016 Juan M Penaranda. All rights reserved.
//

import UIKit

class IVCalculatorViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pokemonNameTextField: UITextField!
    @IBOutlet weak var CPTextField: UITextField!
    @IBOutlet weak var HPTextField: UITextField!
    @IBOutlet weak var dustTextField: UITextField!
    @IBOutlet weak var poweredTextField: UISwitch!
    @IBOutlet weak var pokemonImage: UIImageView!
    
    // Tag enum for UIPickers
    enum PickerViewTag: Int {
        case PokeNameList
        case DustPowerLevel
    }
    
    // UIPickers
    var pokemonNameList = UIPickerView()
    var dustLevel = UIPickerView()
    
    // Lists for UIPickers
    var pokeNames = ["Abra", "Aerodactyl", "Alakazam", "Arbok", "Arcanine", "Beedrill", "Bellsprout", "Blastoise", "Bulbasaur", "Butterfree", "Caterpie", "Chansey", "Charizard", "Charmander", "Charmeleon", "Clefable", "Clefairy", "Cloyster", "Cubone", "Dewgong", "Diglett", "Dodrio", "Doduo", "Dragonair", "Dragonite", "Dratini", "Drowzee", "Dugtrio", "Eevee", "Ekans", "Electabuzz", "Electrode", "Exeggcute", "Exeggutor", "Farfetch'd", "Fearow", "Flareon", "Gastly", "Gengar", "Geodude", "Golbat", "Goldeen", "Golduck", "Golem", "Graveler", "Grimer", "Growlithe", "Gyarados", "Haunter", "Hitmonchan", "Hitmonlee", "Horsea", "Hypno", "Ivysaur", "Jigglypuff", "Jolteon", "Jynx", "Kabuto", "Kabutops", "Kadabra", "Kakuna", "Kangaskhan", "Kingler", "Koffing", "Krabby", "Lapras", "Lickitung", "Machamp", "Machoke", "Machop", "Magikarp", "Magmar", "Magnemite", "Magneton", "Mankey", "Marowak", "Meowth", "Metapod", "Mr. Mime", "Nidoking", "Nidoqueen", "Nidoran (Female)", "Nidoran (Male)", "Nidorina", "Nidorino", "Ninetales", "Oddish", "Omanyte", "Omastar", "Onix", "Paras", "Parasect", "Persian", "Pidgeot", "Pidgeotto", "Pidgey", "Pikachu", "Pinsir", "Poliwag", "Poliwhirl", "Poliwrath", "Ponyta", "Porygon", "Primeape", "Psyduck", "Raichu", "Rapidash", "Raticate", "Rattata", "Rhydon", "Rhyhorn", "Sandshrew", "Sandslash", "Scyther", "Seadra", "Seaking", "Shellder", "Slowbro", "Slowpoke", "Snorlax", "Squirtle", "Starmie", "Staryu", "Tangela", "Tauros", "Tentacool", "Tentacruel", "Vaporeon", "Venomoth", "Venonat", "Venusaur", "Victreebel", "Vileplume", "Voltorb", "Vulpix", "Wartortle", "Weedle", "Weepinbell", "Weezing", "Wigglytuff", "Zubat"]
    var dustList = [200, 400, 600, 800, 1000, 1300, 1600, 1900, 2200, 2500, 3000, 3500, 4000, 4500, 5000, 6000, 7000, 8000, 9000, 10000]
    
    // Toolbars for UIPickers and TextFields
    var toolbar = UIToolbar()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set tags for PickerViews
        pokemonNameList.tag = PickerViewTag.PokeNameList.rawValue
        dustLevel.tag = PickerViewTag.DustPowerLevel.rawValue
        
        // Initalize Pokemon Name text box and picker
        pokemonNameTextField.text = pokeNames[0]
        pokemonNameList.delegate = self
        pokemonNameList.dataSource = self
        pokemonNameTextField.inputView = pokemonNameList
        pokemonNameTextField.inputAccessoryView = toolbar
        pokemonImage.image = UIImage(named: pokeNames[0].lowercaseString)
        
        // Initialize CP Text Field
        CPTextField.keyboardType = UIKeyboardType.NumberPad
        CPTextField.inputAccessoryView = toolbar
        
        // Initialize HP Text Field
        HPTextField.keyboardType = UIKeyboardType.NumberPad
        HPTextField.inputAccessoryView = toolbar
        
        
        // Initalize dust level box and picker
        dustTextField.text = String(dustList[0])
        dustLevel.delegate = self
        dustLevel.dataSource = self
        dustTextField.inputAccessoryView = toolbar
        dustTextField.inputView = dustLevel
        
        // Initialize toolbars
        toolbar.barStyle = UIBarStyle.Default
        toolbar.translucent = true
        toolbar.sizeToFit()
        
        // Initialize buttons for toolbar
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(IVCalculatorViewController.donePicker(_:)))
        let blankButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        toolbar.setItems([blankButton, doneButton], animated: false)
        toolbar.userInteractionEnabled = true
        
    }
    
    // Returns number of columns to display
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Returns number of rows in component
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if let tag = PickerViewTag(rawValue: pickerView.tag) {
            switch tag {
            case .PokeNameList:
                return pokeNames.count
            case .DustPowerLevel:
                return dustList.count
            }
        }
        // Fix?
        return pokeNames.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if let tag = PickerViewTag(rawValue: pickerView.tag) {
            switch tag {
            case .PokeNameList:
                return pokeNames[row]
            case .DustPowerLevel:
                return String(dustList[row])
            }
        }
        // Fix?
        return pokeNames[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if let tag = PickerViewTag(rawValue: pickerView.tag) {
            switch tag {
            case .PokeNameList:
                pokemonNameTextField.text = pokeNames[row]
                pokemonImage.image = UIImage(named: pokeNames[row].lowercaseString)
            case .DustPowerLevel:
                dustTextField.text = String(dustList[row])
            }
        }
    }
    
    func donePicker(sender: UIBarButtonItem) {
        self.view.endEditing(true)
    }
    
    // TODO: Add buttons for selecting in pickerView

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
