//
//  main.swift
//  SwiftBaseHW5
//
//  Created by Владимир Поливников on 27.12.2020.
//

import Foundation

protocol Car {
    func startEngine()
    func stopEngine()
    
    //func openWindow()
    //func closeWindow()
}

extension Car {
    func startEngine() {
        print("\(self) engine started")
    }
    func stopEngine() {
        print("\(self) engine stoped")
    }
    
    //func openWindow()
    //func closeWindow()
}

class TrunkCar: Car {
    
}
class SportCar: Car {
    
}

let trunkCar = TrunkCar()
trunkCar.startEngine()

let sportCar = SportCar()
sportCar.startEngine()
