//
//  StateView.swift
//  SWIFTUI STUDY
//
//  Created by nilk on 2022/02/07.
//

import SwiftUI

class ObsObject1: ObservableObject {
    @Published var value: Int = 0
}

class ObsObject2: ObservableObject {
    @Published var value: Int = 0
}


struct StateView: View {
    // @State 예제 변수
    @State private var state = 0
    // @ObservedObject 예제 변수
    @ObservedObject  var observedObject = ObsObject1()
    // @StateObject 예제 변수
    @StateObject  var stateObject = ObsObject2()
    // @StateObject&@ObservedObject 비교 예제 변수
    
    var body: some View {
        VStack{
            // @State 예제
            Group{
                Text("State : " + String(state))
                Button("State value++") {
                    state+=1
                }
            }
            Spacer().frame(height:20)
            
            // @Binding 예제
            Group{
                Text("Navigation for checking changes")
                NavigationLink(destination: StateCheckNavigationView(childState: $state, observedObject:observedObject,
                    stateObject: stateObject)) {Text("Navigation")} }
            Spacer().frame(height:20)
            
            // @ObservedObject 예제
            Group{
                Text("ObservedObject : " + String(observedObject.value))
                Button("ObservedObject value++"){
                    observedObject.value+=1
                }}
            Spacer()
                .frame(height: 20.0)
            
            // @StateObject 예제
            Group{
                Text("StateObject : " + String(stateObject.value))
                Button("StateObject value++"){
                    stateObject.value+=1}
            }
        }
    }}
struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
