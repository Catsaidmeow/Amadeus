//
//  DatePicker.swift
//  Amadeus
//
//  Created by Julian Brendel on 27.07.19.
//  Copyright © 2019 Julian Brendel. All rights reserved.
//

import SwiftUI

struct _DatePicker: View {
    let name: String
    @Binding var date: Date
    
    var dateFormatter: DateFormatter {
               let formatter = DateFormatter()
               formatter.dateStyle = .long
               return formatter
           }
    
    @State var isSelecting = false
    
    
    var body: some View {
        VStack {
        HStack {
            Text("\(name)")
            Spacer()
            Button(action: {
                self.isSelecting.toggle()
            }) {
                Text("\(date, formatter: dateFormatter)")
            }
        }.frame(width: 300)
            
        if self.isSelecting {
            DatePicker(
                self.$date,
                displayedComponents: .date
            )
        }
        }
    }
}
