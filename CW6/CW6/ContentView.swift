//
//  ContentView.swift
//  CW6
//
//  Created by Bo3lwah on 19/09/2022.
//

import SwiftUI
struct StudentDetails: Identifiable {
    let id  = UUID()
    let Fullname : String
    let year : Int
    let age : Int
}


struct ContentView: View {
    var students = [StudentDetails(Fullname: "Ali", year: 2                        , age: 19),
                    StudentDetails(Fullname: "Maryam", year: 3, age: 23),
                    StudentDetails(Fullname: "M7md", year: 4, age: 23)]
    
    var body: some View {
        VStack{
        Image("student id")
        List {
            ForEach(students)
            {
                student in
                VStack(alignment: .leading)
                {
                
                    Text("Name : \(student.Fullname)")
                        .font(.title)
                    
                    Text("year : \(student.year)")
                        .font(.title)
                    Text("age : \(student.age)")
                        .font(.title)
                }.padding()
            }
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
