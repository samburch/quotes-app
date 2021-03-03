//
//  QuoteModel.swift
//  Quotes App
//
//  Created by Sam Burch on 02/03/2021.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quote = [Quote]()
    
    init () {
        
        self.quote = DataService.getLocalData()
        
    }
    
}
