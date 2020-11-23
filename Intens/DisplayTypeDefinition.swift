//
//  DisplayTypeDefinition.swift
//  Intens
//
//  Created by 能登 要 on 2020/11/19.
//

import Foundation

enum DisplayTypeDefinition: String {
    case slot234 = "Slot2-3-4"
    case slot1 = "Slot1"
    case slot2 = "Slot2"
    case slot3 = "Slot3"
    case slot4 = "Slot4"
    
    func identifier() -> String {
        self.rawValue
    }
    
    func displayName() -> String {
        switch self {
        case .slot234:
            return "Stack(Slot2,3,4)"
        case .slot1:
            return "Slot1"
        case .slot2:
            return "Slot2"
        case .slot3:
            return "Slot3"
        case .slot4:
            return "Slot4"
        }
    }
    
    func representSlot() -> Int {
        switch self {
        case .slot1:
            return 0
        case .slot2, .slot234:
            return 1
        case .slot3:
            return 2
        case .slot4:
            return 3
        }
    }
}
