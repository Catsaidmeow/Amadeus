//
//  ContentView.swift
//  Amadeus
//
//  Created by Julian Brendel on 27.07.19.
//  Copyright © 2019 Julian Brendel. All rights reserved.
//

import SwiftUI



struct ContentView : View {
    
    var dateFormatter: DateFormatter {
                   let formatter = DateFormatter()
                   formatter.dateStyle = .long
                   return formatter
               }
    
    @State var startDate = Date()
    @State var endDate = Date()

       var body: some View {
        NavigationView {
            
           VStack() {
            
            _DatePicker(name: "FROM:", date: self.$startDate)
            _DatePicker(name: "TO:", date: self.$endDate)

            Text("Start: \(startDate, formatter: dateFormatter)")
            Text("End: \(endDate, formatter: dateFormatter)")
                
        }
            .navigationBarTitle(Text("Navigation Title"))
        
        
        }
       }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

