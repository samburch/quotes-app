//
//  QuoteCard.swift
//  Quotes App
//
//  Created by Sam Burch on 02/03/2021.
//

import SwiftUI

struct QuoteCard: View {
    
    var quote: Quote?
    
    var body: some View {
            
        // Optional binding used to check for quote data
        if let quote = quote {
        
            ZStack {

                // Background image
                Image(quote.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                
                //
                VStack(alignment: .leading, spacing: 10.0) {

                    Text(quote.quote)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                    Text("- \(quote.author)")
                        .font(.headline)
                    
                }
                .padding([.top, .leading], 10.0)
                .foregroundColor(.white)
                .shadow(color: .black, radius: 10, x: 2.0, y: 2.0)

            }
            .padding(.horizontal)
            .padding(.vertical, 5)
        }
    }
}

struct QuoteCard_Previews: PreviewProvider {
    static var previews: some View {
        QuoteCard(quote: Quote.testData())
    }
}
