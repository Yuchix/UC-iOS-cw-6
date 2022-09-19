//
//  ContentView.swift
//  CW6-B
//
//  Created by Bo3lwah on 19/09/2022.
//

import SwiftUI
struct ContentView: View {
    let chooseColor = [Color.black , Color.gray , Color.blue , Color.green]
    
    @State var color = Color.blue
    
    @State var text = ""
    
    
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                Text("اختار اللون المفضل")
                    .font(.title)
                    .padding(.top,100)
                
                HStack {
                    ForEach(chooseColor, id:\.self) { chooseColor in
                        
                        chooseColor
                            .clipShape(Circle()).onTapGesture {
                                color = chooseColor
                            }
                        
                    }
                }
               
                TextField("اكتب هنا", text: $text)
                
                NavigationLink (destination:secondView(backgroundColor: color, text: text))
                {
                   Text("حفظ")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .frame(width: 100, height: 100)
                        .background(Color.cyan)
                        .cornerRadius(40)
                       
                     
                    
                }
                
            
            }
            .padding()
            
            .navigationTitle("دفتر اليوميات")
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
