//
//  CategoryCardView.swift
//  TaskIn
//
//  Created by Victor Hartanto on 25/07/22.
//

import SwiftUI

struct CategoryCardView: View {
    let iconName : String
    let label : String
    let numberLabel : String
    let cardColor : Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .frame(width: 160, height: 90)
            .foregroundColor(cardColor)
            .overlay(
                
                ZStack {
                    if(label == "Business"){
                        
                        NavigationLink(destination: BusinessListView(), label: {
                            Text("")
                                .frame(width: 160, height: 90)
                        })
                    }else if (label == "Tech") {
                        NavigationLink(destination: TechListView(), label: {
                            Text("")
                                .frame(width: 160, height: 90)
                        })
                    }else{
                        NavigationLink(destination: DesignListView(), label: {
                            Text("")
                                .frame(width: 160, height: 90)
                        })
                    }
                        
                    
                    HStack {
                    VStack{
                        Image(iconName)
                            .frame(width: 40, height: 40)
                            .padding(.leading,5)
                        Text(label)
                            .fontWeight(.semibold)
                            .font(.system(size: 16))
                            .padding(.leading,5)
                        
                    } // VStack
                    Spacer()
                    Text(numberLabel)
                        .fontWeight(.regular)
                        .font(.system(size: 48))
                        .padding(.trailing,10)
                    }// HStack
                }// ZStack
            ) // overlay
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(iconName: "icon_business", label: "Business", numberLabel: "00", cardColor: Color(red: 0.12, green: 0.81, blue: 0.70, opacity: 1.00))
            .previewLayout(.sizeThatFits)
    }
}
