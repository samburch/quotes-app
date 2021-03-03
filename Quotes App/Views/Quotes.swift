//
//  ContentView.swift
//  Quotes App
//
//  Created by Sam Burch on 02/03/2021.
//

import SwiftUI

struct Quotes: View {
    
    // Reference the QuoteModel
    @ObservedObject var model = QuoteModel()
    
    var body: some View {

        NavigationView {
        
            ScrollView {
            
                VStack {
                    
                    Text("Inspirational quotes")
                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                    
                    // Loop through each QuoteModel and output to QuoteCard
                    ForEach(model.quote) { q in
                        
                        NavigationLink(
                            destination: QuoteDetail(quote: q),
                            label: {
                                // Reference the quote card
                                QuoteCard(quote: q)
                            })
                        
                    }
                    
                }
                
            }

        }
        
    }

    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Quotes()
    }
}
