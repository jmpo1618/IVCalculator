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
    
    var pokemonNamePickerView = UIPickerView()
    var pokeNames = ["Abra", "Aerodactyl", "Alakazam", "Arbok", "Arcanine", "Beedrill", "Bellsprout", "Blastoise", "Bulbasaur", "Butterfree", "Caterpie", "Chansey", "Charizard", "Charmander", "Charmeleon", "Clefable", "Clefairy", "Cloyster", "Cubone", "Dewgong", "Diglett", "Dodrio", "Doduo", "Dragonair", "Dragonite", "Dratini", "Drowzee", "Dugtrio", "Eevee", "Ekans", "Electabuzz", "Electrode", "Exeggcute", "Exeggutor", "Farfetch'd", "Fearow", "Flareon", "Gastly", "Gengar", "Geodude", "Golbat", "Goldeen", "Golduck", "Golem", "Graveler", "Grimer", "Growlithe", "Gyarados", "Haunter", "Hitmonchan", "Hitmonlee", "Horsea", "Hypno", "Ivysaur", "Jigglypuff", "Jolteon", "Jynx", "Kabuto", "Kabutops", "Kadabra", "Kakuna", "Kangaskhan", "Kingdra", "Kingler", "Koffing", "Krabby", "Lapras", "Lickitung", "Machamp", "Machoke", "Machop", "Magikarp", "Magmar", "Magnemite", "Magneton", "Mankey", "Marowak", "Meowth", "Metapod", "Mr. Mime", "Nidoking", "Nidoqueen", "Nidoran (Female)", "Nidoran (Male)", "Nidorina", "Nidorino", "Ninetales", "Oddish", "Omanyte", "Omastar", "Onix", "Paras", "Parasect", "Persian", "Pidgeot", "Pidgeotto", "Pidgey", "Pikachu", "Pinsir", "Poliwag", "Poliwhirl", "Poliwrath", "Ponyta", "Porygon", "Primeape", "Psyduck", "Raichu", "Rapidash", "Raticate", "Rattata", "Rhydon", "Rhyhorn", "Sandshrew", "Sandslash", "Scyther", "Seadra", "Seaking", "Shellder", "Slowbro", "Slowpoke", "Snorlax", "Squirtle", "Starmie", "Staryu", "Tangela", "Tauros", "Tentacool", "Tentacruel", "Vaporeon", "Venomoth", "Venonat", "Venusaur", "Victreebel", "Vileplume", "Voltorb", "Vulpix", "Wartortle", "Weedle", "Weepinbell", "Weezing", "Wigglytuff", "Zubat"]

    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonNameTextField.text = pokeNames[0]
        pokemonNamePickerView.delegate = self
        pokemonNamePickerView.dataSource = self
        pokemonNameTextField.inputView = pokemonNamePickerView
    }
    
    // Returns number of columns to display
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Returns number of rows in component
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pokeNames.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pokeNames[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pokemonNameTextField.text = pokeNames[row]
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
