//
//  Quote.swift
//  Quotes App
//
//  Created by Sam Burch on 02/03/2021.
//

import Foundation

struct Quote: Identifiable, Decodable {
    
    // Set up an ID as a UUID optional
    var id: UUID?
    
    // Setup all the JSON variables that will make up a quote
    var image: String
    var quote: String
    var author: String
    var fullquote: [String]
    
    static func testData() -> Quote {
        
        let testQuote = Quote(id: UUID(), image: "ambition", quote: "Some quote", author: "Test Name", fullquote: ["quote 1", "quote 2"])
        
        return testQuote
    }
    
}
