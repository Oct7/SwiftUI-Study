//
//  StateCheckNavigationView.swift
//  SWIFTUI STUDY
//
//  Created by nilk on 2022/02/11.
//

import SwiftUI

struct StateCheckNavigationView: View {
    // @Binding 예제 변수
    @Binding var childState: Int
    // @ObservedObject 예제 변수
    @ObservedObject  var observedObject:ObsObject1
    // @StateObject 예제 변수
    @StateObject  var stateObject:ObsObject2
    
    
    
    var body: some View {
        // @Binding 예제
        Text("Binded value : "+String(childState))
        Button("binded value++") {
            childState+=1
        }
        // @ObservedObject 예제
        Text("ObservedObject value : "+String(observedObject.value))
        Button("ObservedObject value++") {
            observedObject.value+=1
        }
        // @StateObject 예제
        Text("StateObject value : "+String(stateObject.value))
        Button("StateObject value++") {
            stateObject.value+=1
        }
    }
}

//struct StateCheckNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        StateCheckNavigationView(childState:  )
//    }
//}
