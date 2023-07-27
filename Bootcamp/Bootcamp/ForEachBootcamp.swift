//
//  ForEachBootcamp.swift
//  Bootcamp
//
//  Created by Finn on 7/27/23.
//

import SwiftUI

struct ForEachBootcamp: View {

    let data: [String] = [
        "Bill", "Sally", "Jeff", "Bill"
    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            ForEach(data.indices){ index in
                Text("\(index): \(data[index])")
            }
//            ForEach(0..<100) { index in
//                Circle()
//                    .frame(height: 50)
//            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
