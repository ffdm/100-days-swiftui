//
//  StacksBootcamp.swift
//  Bootcamp
//
//  Created by Finn on 7/27/23.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        // Vstacks -> top to bottom
        // H -> left to right
        // Z -> back to front
        VStack(alignment: .leading, spacing: nil , content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 150)
            HStack {
                Rectangle()
                    .fill(Color.green)
                .frame(width: 110, height: 110)
                Rectangle()
                    .fill(Color.orange)
                .frame(width: 12, height: 30)
            }
            .background(Color.black)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
            ZStack(alignment: .leading, content: {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 130, height: 130)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
            }
            )
        }).background(Color.gray)
        
        
        
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
