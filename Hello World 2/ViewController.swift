//
//  ViewController.swift
//  Hello World 2
//
//  Created by Ferdinando Danise on 25/05/16.
//  Copyright © 2016 Ferdinando Danise. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    
    @IBOutlet var tasto1: UIButton!
    
    func generateRandomColor() -> UIColor {
        let hue : CGFloat = CGFloat(arc4random() % 256) / 256 // use 256 to get full range from 0.0 to 1.0
        let saturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from white
        let brightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5 // from 0.5 to 1.0 to stay away from black
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
    
    let ceo = Anagrafica(nome: "Tim", cognome: "Cook", lavoro: "Apple CEO")
    let designer = Anagrafica(nome: "Jonathan", cognome: "Ive", lavoro: "Chief Design Officer")
    let vpresidentonline = Anagrafica(nome: "Angela", cognome: "Ahrendts", lavoro: "Senior Vice President")
    let financial = Anagrafica(nome: "Luca", cognome: "Maestri", lavoro: "Chief Financial Officer")
    
    var tmp = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        label1.layer.cornerRadius = 10.0
        label1.clipsToBounds = true
        
        tasto1.layer.cornerRadius = 10.0
        tasto1.clipsToBounds = true
         
        }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    

    @IBAction func tasto(_ sender: UIButton) {
        
        
        label1.backgroundColor = generateRandomColor()
        label1.textColor = UIColor.white
        tasto1.backgroundColor = generateRandomColor()
        label1.font = UIFont(name: label1.font.fontName, size: 40)
        
        switch tmp {
        
        case 0:label1.text = ceo.damminome()
        
            tmp += 1
        
        case 1:
            label1.text = vpresidentonline.damminome()
            
            tmp += 1
        case 2:
            label1.text = financial.damminome()
            
            tmp += 1
            
        case 3:
            label1.text = designer.damminome()
            
            tmp += 1
            
        case 4:
            label1.font = UIFont(name: label1.font.fontName, size: 65)
            label1.text = "Hello World!"
            tmp += 1

        default:
            label1.text = ""
            label1.backgroundColor = UIColor.clear
            tmp = 0
            
            
            
            
            
        }
        
        
    }
    
   
    
    @IBAction func cambiaColore(_ sender: UISlider) {
        
        
        if label1.text != "" {
            
        
        
        
        label1.backgroundColor = UIColor(hue: CGFloat(sender.value),
                                         saturation: 1.0,
                                         brightness: 1.0,
                                         alpha: 1.0)
        
            tasto1.backgroundColor = UIColor(hue: CGFloat(sender.value),
                                             saturation: 0.3,
                                             brightness: 1.0,
                                             alpha: 1.0)
        
        }
        
        
    }

}

