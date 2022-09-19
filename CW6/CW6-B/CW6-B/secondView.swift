//
//  secondView.swift
//  CW6-B
//
//  Created by Bo3lwah on 19/09/2022.
//

import SwiftUI

struct secondView: View {
    
    @State var backgroundColor: Color
    @State var text: String
    
    var body: some View {
        
        
        ZStack {
            backgroundColor.ignoresSafeArea()
            Text(text)
                .foregroundColor(.red)
                .font(.title)
            

        }
    }
}







struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView(backgroundColor: .blue, text: "")
    }
}
