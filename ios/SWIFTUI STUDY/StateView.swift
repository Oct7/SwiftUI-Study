//
//  StateView.swift
//  SWIFTUI STUDY
//
//  Created by nilk on 2022/02/07.
//

import SwiftUI

struct StateView: View {
    @State private var state = 0
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
