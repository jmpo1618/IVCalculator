//
//  IVResultsViewController.swift
//  IV Calculator
//
//  Created by Juan M Penaranda on 8/12/16.
//  Copyright © 2016 Juan M Penaranda. All rights reserved.
//

import UIKit
import Foundation

class IVResultsViewController: UIViewController {
    
    var stats: PokemonStats?
    
    var baseStats: [String: Array<Int>] = ["Kadabra": [80, 150, 112], "Machamp": [180, 198, 180], "Vulpix": [76, 106, 118], "Seaking": [160, 172, 160], "Tentacruel": [160, 170, 196], "Seel": [130, 104, 138], "Scyther": [140, 176, 180], "Tangela": [130, 164, 152], "Dodrio": [120, 182, 150], "Rattata": [60, 92, 86], "Machoke": [160, 154, 144], "Geodude": [80, 106, 118], "Kabutops": [120, 190, 190], "Golbat": [150, 164, 164], "Rhydon": [210, 166, 160], "Voltorb": [80, 102, 124], "Nidoran-m": [92, 110, 94], "Slowpoke": [180, 110, 110], "Nidorina": [140, 132, 136], "Weepinbell": [130, 190, 110], "Koffing": [80, 136, 142], "Seadra": [110, 176, 150], "Pidgeot": [166, 170, 166], "Articuno": [180, 198, 242], "Farfetchd": [104, 138, 132], "Vaporeon": [260, 186, 168], "Meowth": [80, 104, 94], "Zapdos": [180, 232, 194], "Kangaskhan": [210, 142, 178], "Magneton": [100, 186, 180], "Kakuna": [90, 62, 82], "Mewtwo": [212, 284, 202], "Mew": [200, 220, 220], "Magnemite": [50, 128, 138], "Dugtrio": [70, 148, 140], "Tentacool": [80, 106, 136], "Venonat": [120, 108, 118], "Mankey": [80, 122, 96], "Dratini": [82, 128, 110], "Snorlax": [320, 180, 180], "Ponyta": [100, 168, 138], "Flareon": [130, 238, 178], "Wartortle": [118, 144, 176], "Staryu": [60, 130, 128], "Alakazam": [110, 186, 152], "Oddish": [90, 134, 130], "Aerodactyl": [160, 182, 162], "Hitmonchan": [100, 138, 204], "Jynx": [130, 172, 134], "Zubat": [80, 88, 90], "Ivysaur": [120, 156, 158], "Magmar": [130, 214, 158], "Butterfree": [120, 144, 144], "Starmie": [120, 194, 192], "Omastar": [140, 180, 202], "Horsea": [60, 122, 100], "Lickitung": [180, 126, 160], "Golduck": [160, 194, 176], "Fearow": [130, 168, 146], "Clefairy": [140, 116, 124], "Cubone": [100, 102, 150], "Jigglypuff": [230, 98, 54], "Ninetales": [146, 176, 194], "Pinsir": [130, 184, 186], "Growlithe": [110, 156, 110], "Omanyte": [70, 132, 160], "Venomoth": [140, 172, 154], "Golem": [160, 176, 198], "Magikarp": [40, 42, 84], "Exeggutor": [190, 232, 164], "Doduo": [70, 126, 96], "Ekans": [70, 112, 112], "Paras": [70, 122, 120], "Jolteon": [130, 192, 174], "Arcanine": [180, 230, 180], "Exeggcute": [120, 110, 132], "Vileplume": [150, 202, 190], "Lapras": [260, 186, 190], "Gyarados": [190, 192, 196], "Hitmonlee": [100, 148, 172], "Poliwhirl": [130, 132, 132], "Onix": [70, 90, 186], "Krabby": [60, 116, 110], "Shellder": [60, 120, 112], "Blastoise": [158, 186, 222], "Weedle": [80, 68, 64], "Weezing": [130, 190, 198], "Haunter": [90, 172, 118], "Victreebel": [160, 222, 152], "Parasect": [120, 162, 170], "Marowak": [120, 140, 202], "Nidoking": [162, 204, 170], "Diglett": [20, 108, 86], "Raichu": [120, 200, 154], "Chansey": [500, 40, 60], "Hypno": [170, 162, 196], "Grimer": [160, 124, 110], "Rapidash": [130, 200, 170], "Slowbro": [190, 184, 198], "Spearow": [80, 102, 78], "Ditto": [96, 110, 110], "Goldeen": [90, 112, 126], "Abra": [50, 110, 76], "Eevee": [110, 114, 128], "Charmeleon": [116, 160, 140], "Kabuto": [60, 148, 142], "Primeape": [130, 178, 150], "Kingler": [110, 178, 168], "Machop": [140, 118, 96], "Moltres": [180, 242, 194], "Drowzee": [120, 104, 140], "Sandslash": [150, 150, 172], "Psyduck": [100, 132, 112], "Charmander": [78, 128, 108], "Poliwag": [80, 108, 98], "Dragonair": [122, 170, 152], "Clefable": [190, 178, 178], "Electrode": [120, 150, 174], "Graveler": [110, 142, 156], "Pikachu": [70, 124, 108], "Bellsprout": [100, 158, 78], "Porygon": [130, 156, 158], "Arbok": [120, 166, 166], "Squirtle": [88, 112, 142], "Sandshrew": [100, 90, 114], "Pidgeotto": [126, 126, 122], "Cloyster": [100, 196, 196], "Nidorino": [122, 142, 128], "Caterpie": [90, 62, 66], "Pidgey": [80, 94, 90], "Electabuzz": [130, 198, 160], "Charizard": [156, 212, 182], "Dewgong": [180, 156, 192], "Metapod": [100, 56, 86], "Mr-mime": [80, 154, 196], "Beedrill": [130, 144, 130], "Muk": [210, 180, 188], "Gastly": [60, 136, 82], "Persian": [130, 156, 146], "Gloom": [120, 162, 158], "Wigglytuff": [280, 168, 108], "Gengar": [120, 204, 156], "Nidoran-f": [110, 100, 104], "Bulbasaur": [90, 126, 126], "Nidoqueen": [180, 184, 190], "Tauros": [150, 148, 184], "Raticate": [110, 146, 150], "Dragonite": [182, 250, 212], "Rhyhorn": [160, 110, 116], "Venusaur": [160, 198, 200], "Poliwrath": [180, 180, 202]]
    
    var cpMultipliers: [Double: Double] = [1: 0.0939999967813492, 1.5: 0.135137432089339, 2: 0.166397869586945, 2.5: 0.192650913155325, 3: 0.215732470154762, 3.5: 0.236572651424822, 4: 0.255720049142838, 4.5: 0.273530372106572, 5: 0.290249884128571, 5.5: 0.306057381389863, 6: 0.321087598800659, 6.5: 0.335445031996451, 7: 0.349212676286697, 7.5: 0.362457736609939, 8: 0.375235587358475, 8.5: 0.387592407713878, 9: 0.399567276239395, 9.5: 0.411193553216100, 10: 0.422500014305115, 10.5: 0.432926420512509, 11: 0.443107545375824, 11.5: 0.453059948165049, 12: 0.462798386812210, 12.5: 0.472336085311278, 13: 0.481684952974319, 13.5: 0.490855807179549, 14: 0.499858438968658, 14.5: 0.508701748961600, 15: 0.517393946647644, 15.5: 0.525942516110322, 16: 0.534354329109192, 16.5: 0.542635753803599, 17: 0.550792694091797, 17.5: 0.558830584490385, 18: 0.566754519939423, 18.5: 0.574569128145370, 19: 0.582278907299042, 19.5: 0.589887907888945, 20: 0.597400009632111, 20.5: 0.604823648665171, 21: 0.612157285213470, 21.5: 0.619404107958234, 22: 0.626567125320435, 22.5: 0.633649178748576, 23: 0.640652954578400, 23.5: 0.647580971386554, 24: 0.654435634613037, 24.5: 0.661219265805859, 25: 0.667934000492096, 25.5: 0.674581885647492, 26: 0.681164920330048, 26.5: 0.687684901255373, 27: 0.694143652915955, 27.5: 0.700542901033063, 28: 0.706884205341339, 28.5: 0.713169074873823, 29: 0.719399094581604, 29.5: 0.725575586915154, 30: 0.731700003147125, 30.5: 0.734741038550429, 31: 0.737769484519958, 31.5: 0.740785579737136, 32: 0.743789434432983, 32.5: 0.746781197247765, 33: 0.749761044979095, 33.5: 0.752729099732281, 34: 0.755685508251190, 34.5: 0.758630370209851, 35: 0.761563837528229, 35.5: 0.764486049592180, 36: 0.767397165298462, 36.5: 0.770297293677362, 37: 0.773186504840851, 37.5: 0.776064947064992, 38: 0.778932750225067, 38.5: 0.781790050767666, 39: 0.784636974334717, 39.5: 0.787473608513275, 40: 0.790300011634827]

    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var pokemonNameLabel: UILabel!
    @IBOutlet weak var CPLabel: UILabel!
    @IBOutlet weak var HPLabel: UILabel!
    @IBOutlet weak var dustLabel: UILabel!
    @IBOutlet weak var poweredLabel: UILabel!
    @IBOutlet weak var mainStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let stats = stats {
            pokemonNameLabel.text = stats.name
            CPLabel.text = String(stats.CP)
            HPLabel.text = String(stats.HP)
            dustLabel.text = String(stats.dust)
            poweredLabel.text = String(stats.powered)
            pokemonImage.image = UIImage(named: stats.name.lowercaseString)
            calculateIVs(stats)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calculateIVs(stats: PokemonStats) {
        for atkIV in 0...15 {
            for defIV in 0...15 {
                for stmIV in 0...15 {
                    for (_, cpMult) in cpMultipliers {
                        if checkCPHP(stats, atkIV: atkIV, defIV: defIV, stmIV: stmIV, cpMult: cpMult) {
                            print(atkIV, defIV, stmIV)
                        }
                    }
                }
            }
        }
    }
    
    func checkCPHP(stats: PokemonStats, atkIV: Int, defIV: Int, stmIV: Int, cpMult: Double) -> Bool {
        let currentBaseStats = baseStats[stats.name]
        let baseStm = currentBaseStats![0]
        let baseAtk = currentBaseStats![1]
        let baseDef = currentBaseStats![2]
        let possibleCP = floor(Double(baseAtk + atkIV) * pow(Double(baseDef + defIV), 0.5) * pow(Double(baseStm + stmIV), 0.5) * pow(cpMult, 2) / 10.0)
        let possibleHP = floor(Double(baseStm + stmIV) * cpMult)
        return max(possibleCP, 10) == Double(stats.CP) && max(possibleHP, 10) == Double(stats.HP)
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
