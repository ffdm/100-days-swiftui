//
//  StateBootcamp.swift
//  Bootcamp
//
//  Created by Finn on 7/27/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var color = Color.green
    @State var title = ""
    @State var count = 0

    var body: some View {
        ZStack {
            //bg
            color
                .edgesIgnoringSafeArea(.all)
            // content
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .underline()
                    .font(.headline)
                HStack(spacing: 20) {
                    Button("Button 1") {
                        color = Color.blue
                        title = "1"
                        count+=1
                    }
                    Button("Button 2") {
                        color = randColor()
                        title = "2"
                        count+=1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
    func randColor() -> Color {
        let x = Int.random(in: 0...3)
        if (x == 0) {
            return Color.red
        } else if (x == 1) {
            return Color.orange
        } else if (x == 2) {
            return Color.yellow
        }
        return Color.green
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
