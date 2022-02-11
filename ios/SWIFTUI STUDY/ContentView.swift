//
//  ContentView.swift
//  SWIFTUI STUDY
//
//  Created by nilk on 2022/02/02.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                List{
                    NavigationLink(destination:StateView()){
                        Text("상태관리")
                    }
                    Text("다음은 뭐가 있을까?")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.portrait)
    }
}
