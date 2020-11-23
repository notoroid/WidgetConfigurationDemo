//
//  IntentHandler.swift
//  Intens
//
//  Created by 能登 要 on 2020/11/19.
//

import Intents

class IntentHandler: INExtension, ConfigurationIntentHandling {
    func provideDisplayTypeOptionsCollection(for intent: ConfigurationIntent, with completion: @escaping (INObjectCollection<DisplayType>?, Error?) -> Void) {
     
        let displayTypeDefinitions: [DisplayTypeDefinition] = [ .slot234,
                                                                .slot1,
                                                                .slot2,
                                                                .slot3,
                                                                .slot4
                                                              ]
        
        let displayType = displayTypeDefinitions.map { (displayTypeDefinition) -> DisplayType in
            DisplayType(identifier: displayTypeDefinition.identifier(), display: displayTypeDefinition.displayName())
                                                     }

        completion(INObjectCollection(items: displayType), nil)
    }

    func defaultDisplayType(for intent: ConfigurationIntent) -> DisplayType? {
        return DisplayType(identifier: DisplayTypeDefinition.slot234.identifier(), display: DisplayTypeDefinition.slot234.displayName())
    }
}
