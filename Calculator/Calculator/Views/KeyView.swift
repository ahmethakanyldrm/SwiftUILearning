//
//  KeyView.swift
//  Calculator
//
//  Created by AHMET HAKAN YILDIRIM on 8.01.2023.
//

import SwiftUI

struct KeyView: View {
    
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    
    let buttons: [[Keys]] = [
        [.clear, .negative, .percent, .divide],
        [.seven,.eight,.nine,.multiply],
        [.four,.five,.six,.subtract],
        [.one,.two,.three,.add],
        [.zero,.decimal,.equal]
    ]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView()
    }
}
