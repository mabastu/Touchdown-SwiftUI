//
//  RatingsAndSizesDetailView.swift
//  Touchdown
//
//  Created by Mabast on 4/6/21.
//

import SwiftUI

struct RatingsAndSizesDetailView: View {
    
    let sizes: [String] = ["XS", "S", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {
                            
                        }, label: {
                           Image(systemName: "star.fill")
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(colorGrey.cornerRadius(5))
                            .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGrey)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGrey)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGrey, lineWidth: 2)
                                )
                        })
                    }
                })
            })
        })
    }
}

struct RatingsAndSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsAndSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
