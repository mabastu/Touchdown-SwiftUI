//
//  QuantityAndFavorateDetailView.swift
//  Touchdown
//
//  Created by Mabast on 4/6/21.
//

import SwiftUI

struct QuantityAndFavorateDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
               Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .frame(minWidth: 36)
            
            Button(action: {
                    counter += 1
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityAndFavorateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityAndFavorateDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
