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
    // @ObservedObject vs @StateObject 예제 변수
    @ObservedObject  var check_observedObject = ObsObject1()
    // @StateObject 예제 변수
    @StateObject  var stateObject:ObsObject2
    // @ObservedObject vs @StateObject 예제 변수
    @StateObject  var check_stateObject = ObsObject2()

    
    var body: some View {
        
        // @Binding 예제
        Text("Binded value : "+String(childState))
        Button("binded value++") {
            childState+=1
        }
        // @ObservedObject 예제
        Text("observedObject value : "+String(observedObject.value))
        Button("observedObject value++") {
            observedObject.value+=1
        }
        
        // @StateObject 예제
        Text("stateObject value : "+String(stateObject.value))
        Button("stateObject value++") {
            stateObject.value+=1
        }
        
        // @StateObject VS @ObservedObject 변화 확인
        Spacer()
            .frame(height: 40.0)
        Group{
            Text("@StateObject & @ObservedObject diff")
            Text("check_observedObject value : "+String(check_observedObject.value))
            Button("check_observedObject value++") {
                check_observedObject.value+=1
            }
            Text("check_stateObject value : "+String(check_stateObject.value))
            Button("check_stateObject value++") {
                check_stateObject.value+=1
            }
            
        }
        
      
    }
}

//struct StateCheckNavigationView_Previews: PreviewProvider {
//    static var previews: some View {
//        StateCheckNavigationView(childState:  )
//    }
//}
