//
//  AddView.swift
//  ToDoList
//
//  Created by Denis DRAGAN on 29.10.2023.
//

import SwiftUI

struct AddView: View {
    @State private var textFieldText: String = ""
    
    var body: some View {
        
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button(action: {
                    
                }, label: {
                    Text("SAVE")
                        .frame(height: 45)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                })
                .buttonStyle(.borderedProminent)
            }
            .padding(14)
            .navigationTitle("Add an Item 🖋️")
        }
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
