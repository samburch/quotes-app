//
//  DataService.swift
//  Quotes App
//
//  Created by Sam Burch on 02/03/2021.
//

import Foundation

class DataService {
    
    // Data Service method to fetch the JSON data for the project and return the recipes
    // Seperating this method into a seperate file makes it more manageable
    static func getLocalData() -> [Quote] {
        
        // Parse local JSON file
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        // Check if pathstring is not nil otherwise return an empty recipe list
        guard pathString != nil else {
            return[Quote]()
        }
        
        // Get a URL path to the json file
        let url = URL(fileURLWithPath: pathString!)
        
        do {
        
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the json data
            let decoder = JSONDecoder()
            var quotes = try decoder.decode([Quote].self, from: data)
                
            // Add UUID to each quote
            for index in 0..<quotes.count {
                quotes[index].id = UUID()
            }
            
            return quotes
        
        } catch {
            print("Couldn't parse any quotes")
        }
        
        return [Quote]()
        
    }
    
}
