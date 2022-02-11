//
//  StateCheckNavigationView.swift
//  SWIFTUI STUDY
//
//  Created by nilk on 2022/02/11.
//

import SwiftUI

struct StateCheckNavigationView: View {
    @Binding var childState: Int
    var body: some View {
            Text("Binded value : "+String(childState))
            Button("binded value++") {
                childState+=1
            }
    }
}

//struct StateCheckNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        StateCheckNavigationView(childState:  )
//    }
//}
