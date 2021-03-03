//
//  QuoteDetail.swift
//  Quotes App
//
//  Created by Sam Burch on 02/03/2021.
//

import SwiftUI

struct QuoteDetail: View {
    
    var quote: Quote?
    
    var body: some View {
        
        ScrollView {
        
            if let quote = quote {
            
                VStack(alignment: .leading, spacing: 20.0) {
                    
                    Text(quote.author)
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    ForEach(quote.fullquote, id: \.self) {
                        
                        fq in
                        Text(fq)
                        Spacer()
                        
                    }
                }
                .padding()
                
            }
            
        }
        
    }
    
}

struct QuoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        QuoteDetail(quote: Quote.testData())
    }
}
