//
//  CurvedShapeView.swift
//  CurvedTabBarSwiftUI
//
//  Created by Nelson Gonzalez on 1/10/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct CurvedShapeView: View {
    
    var body: some View{
        
        Path { path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
            path.addLine(to: CGPoint(x: 0, y: 55))
            
        }.fill(Color.white)
            .rotationEffect(.init(degrees: 180))
    }
}

struct CurvedShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CurvedShapeView()
    }
}
