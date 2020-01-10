//
//  BottomBarView.swift
//  CurvedTabBarSwiftUI
//
//  Created by Nelson Gonzalez on 1/10/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct BottomBarView: View {
    @Binding var selected: Int
        
        var body: some View{
            
            HStack {
                
                Button(action: {
                    
                    self.selected = 0
                    
                }) {
                    
                    Image("home")
                    
                }.foregroundColor(self.selected == 0 ? .black : .gray)
                
                Spacer(minLength: 12)
                
                
                Button(action: {
                    
                    self.selected = 1
                    
                }) {
                    
                    Image("search")
                    
                }.foregroundColor(self.selected == 1 ? .black : .gray)
                
                
                Spacer().frame(width: 120)
                
                Button(action: {
                    
                    self.selected = 2
                    
                }) {
                    
                    Image("person")
                    
                }.foregroundColor(self.selected == 2 ? .black : .gray).offset(x: -10)
    
                
                Spacer(minLength: 12)
                
                Button(action: {
                    
                    self.selected = 3
                    
                }) {
                    
                    Image("menu")
                    
                }.foregroundColor(self.selected == 3 ? .black : .gray)
            }
        }
}

struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView(selected: .constant(0))
    }
}
