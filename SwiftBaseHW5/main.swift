//
//  main.swift
//  SwiftBaseHW5
//
//  Created by Владимир Поливников on 27.12.2020.
//

import Foundation

protocol Car {
    var isEngineStarted: Bool { get set }
    var isWindowOpened: Bool { get set }
    
    func startEngine()
    func stopEngine()
    
    func openWindow()
    func closeWindow()
}

extension Car {
    
    func startEngine() {
        print("\(self) started engine")
    }
    func stopEngine() {
        print("\(self) stoped engine")
    }
    
    func openWindow() {
        print("\(self) opened window")
    }
    func closeWindow() {
        print("\(self) closed window")
    }
}

class TrunkCar: Car {
    var isEngineStarted: Bool = false
    var isWindowOpened: Bool = false
    
    private let numberOfAxles: UInt
    
    init(numberOfAxles: UInt) {
        self.numberOfAxles = numberOfAxles
    }
    
}

class SportCar: Car {
    var isEngineStarted: Bool = false
    var isWindowOpened: Bool = false
    
    private let isEngineTurbocharged: Bool
    
    init(isEngineTurbocharged: Bool) {
        self.isEngineTurbocharged = isEngineTurbocharged
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "\(numberOfAxles) axle TrunkCar"
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        if isEngineTurbocharged {
            return "SportCar with turbocharged engine"
        } else {
            return "SportCar without turbocharged engine"
        }
    }
}

let trunkCar = TrunkCar(numberOfAxles: 4)
trunkCar.startEngine()

let sportCar = SportCar(isEngineTurbocharged: true)
sportCar.openWindow()
