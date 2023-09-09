//
//  MenuItemDetailsView.swift
//  Coursera Advanced Swift Week4 Little Lemon dinner menu
//
//  Created by Ihor Dolhalov on 08.09.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    let label: String
    
    var body: some View {
        VStack {
            Image("Little Lemon logo")
                .resizable()
                .frame(width:200, height:300)
            Text("Price:").fontWeight(.bold)
            Text("10.99").padding(.bottom, 20)
            Text("Ordered:").fontWeight(.bold)
            Text("1,000").padding(.bottom, 20)
            Text("Ingredients:").fontWeight(.bold)
            Text("spinach")
            Text("broccoli")
            Text("carrot")
            Text("pasta")

        }
        .navigationBarTitle(Text(label), displayMode: .large)
    }
}
