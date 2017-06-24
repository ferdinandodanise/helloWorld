//
//  anagrafica.swift
//  Hello World 2
//
//  Created by Ferdinando Danise on 25/05/16.
//  Copyright © 2016 Ferdinando Danise. All rights reserved.
//

import UIKit

class Anagrafica: NSObject {
    
    var nome : String!
    var cognome : String!
    var lavoro : String!
    
    init(nome : String, cognome : String, lavoro : String) {
    
        self.nome = nome
        self.cognome = cognome
        self.lavoro = lavoro
        
    
    }
    
    func damminome() -> String {
        return nome + " " + cognome + " - " + lavoro

}
}
