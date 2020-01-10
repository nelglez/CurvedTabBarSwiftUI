//
//  ContentView.swift
//  CurvedTabBarSwiftUI
//
//  Created by Nelson Gonzalez on 1/10/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 0
    
    var body: some View {
        
        VStack {
            
            // Your View.....
            Spacer()
            
            ZStack(alignment: .top) {
                
                BottomBarView(selected: self.$selected).padding().padding(.horizontal, 22).background(CurvedShapeView())
                
                Button(action: {
                    
                }) {
                    
                    Image("wishlist").renderingMode(.original).padding(18)
                    
                }.background(Color.yellow).clipShape(Circle()).offset(y: -32).shadow(radius: 5)
                
            }
        
        }.background(Color("Color").edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
