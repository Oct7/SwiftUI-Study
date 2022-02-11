//
//  StateView.swift
//  SWIFTUI STUDY
//
//  Created by nilk on 2022/02/07.
//

import SwiftUI

struct StateView: View {
    // @State 예제 변수
    @State private var state = 0
    var body: some View {
        VStack{
            // @State 예제
            Text("State : " + String(state))
            Button("State value++") {
                state+=1
            }
            
            Spacer().frame(height:20)
            
            // @Binding 예제
            Text("Binding Navigation")
            NavigationLink(destination: StateCheckNavigationView(childState: $state)) {Text("Binding Navigation")
                
                
            }
        }
    }
}
struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
